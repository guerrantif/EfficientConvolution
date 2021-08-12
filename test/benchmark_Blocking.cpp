#include <iostream>
#include <cassert>
#include <string>

#include "Tensor.hh"
#include "Kernel.hh"
#include "Statistics.h"
#include "Chronometer.hh"


int main(int argc, char const *argv[]){

    // // Input dimensions
    // const uint32_t Hi = 27;
    // const uint32_t Wi = 27;
    // const uint32_t Ci = 512;
    // // Kernel dimensions
    // const uint32_t Hf = 3;
    // const uint32_t Wf = 3;
    // const uint32_t Cf = Ci;
    // const uint32_t Ef = 256;

    // Input dimensions
    const uint32_t Hi = 3;
    const uint32_t Wi = 3;
    const uint32_t Ci = 5;
    // Kernel dimensions
    const uint32_t Hf = 2;
    const uint32_t Wf = 2;
    const uint32_t Cf = Ci;
    const uint32_t Ef = 2;

    typedef float DType;

    Tensor<DType> image{Hi, Wi, Ci,tensor::init::INCR};         // H, W, C
    Kernel<DType> kernel{Hf, Wf, Ef, Cf,tensor::init::INCR};    // H, W, E, C

    // Convolution paramters
    auto stride = 1;
    auto padding = 0;

    // Test parameters
    const uint32_t ORDER_NUMBER = std::stoi(argv[5]);
    const uint32_t N_TESTS = std::stoi(argv[6]);

    // Print info
    std::cout << "Input -> " << "Hi: " << Hi << ", Wi: " << Wi << ", Ci: " << Ci << std::endl;
    std::cout << "Kernel -> " << "Hf: " << Hf << ", Wf: " << Wf << ", Ef: " << Ef << ", Cf: " << Cf << std::endl;
    std::cout << "N. test: " << N_TESTS << std::endl;
    std::cout << "Order number: " << ORDER_NUMBER << std::endl;

    // Check correctness of results
    // auto output1 = image.convolveNaive(&kernel, stride, padding, 3, 1, 2);
    // auto output2 = image.convolveNaive(&kernel, stride, padding, 2, 1, 2);
    // std::cout << "Saranno uguali??????????\n" << (output1==output2) << std::endl;
    // std::cout << "Out1: ";
    // for(size_t i = 0; i < output1.getSize(); i++) {
    //     std::cout << output1.getData()[i] << ", ";
    // }
    // std::cout << std::endl;
    // std::cout << "Out2: ";
    // for(size_t i = 0; i < output2.getSize(); i++) {
    //     std::cout << output2.getData()[i] << ", ";
    // }
    // std::cout << std::endl;

    {
    // CONVOLUTION
    Chronometer chronometer;
    chronometer.start();
    Statistics stat;
    for(auto i = 0; i < N_TESTS; i++) {
        float executionTime = 0.0;
        auto output = image.convolveNaive(&kernel, stride, padding, 3, Ef, ORDER_NUMBER, &executionTime);
        stat.addToCollection(executionTime);
        std::cout << "Output: ";
        for(size_t i = 0; i < output.getSize(); i++) {
            std::cout << output.getData()[i] << ", ";
            auto a = 0;
            std::cin >> a; 
        }
    }
    std::cout << "Execution time (Median):\t" << stat.getMedian() << " ms\n";
    chronometer.stop();
    std::cout << "Execution time (Division):\t" << chronometer.getTime() / float(N_TESTS) << " ms\n";
    }
    std::cout << "__________________________________________________________\n";   
    return 0;
}
