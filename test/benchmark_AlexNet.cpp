#include <iostream>
#include <cassert>
#include <string>

#include "Tensor.hh"
#include "Kernel.hh"
#include "Statistics.h"
#include "Chronometer.hh"


int main(int argc, char const *argv[]){

    // Manage the input arguments 
    // arg[1]:  Order number of for loops
    // arg[2]:  Number of tests to do
    if(argc != 3) {
        std::cerr << "Please insert 6 arguments as follow:\n";
        std::cout << "arg[1]:  Order number of for loops\n";
        std::cout << "arg[2]:  Number of tests to do\n";
        return 1;
    }

    typedef float DType;

    // AlexNet input
    std::vector<Tensor<DType>> inputs = {
        Tensor<DType>{227, 227, 3, tensor::init::INCR},     // H, W, C
        Tensor<DType>{27, 27, 96, tensor::init::INCR},      // H, W, C
        Tensor<DType>{13, 13, 256, tensor::init::INCR},     // H, W, C
        Tensor<DType>{13, 13, 384, tensor::init::INCR},     // H, W, C
        Tensor<DType>{13, 13, 384, tensor::init::INCR}     // H, W, C
    };

    // AlexNet Kernels 
    std::vector<Kernel<DType>> kernels = {
        Kernel<DType>{11, 11, 96, 3, tensor::init::INCR},    // H, W, E, C
        Kernel<DType>{5, 5, 256, 96, tensor::init::INCR},    // H, W, E, C
        Kernel<DType>{3, 3, 384, 256, tensor::init::INCR},    // H, W, E, C
        Kernel<DType>{3, 3, 384, 384, tensor::init::INCR},    // H, W, E, C
        Kernel<DType>{3, 3, 256, 384, tensor::init::INCR}    // H, W, E, C
    };

    // Best order loops
    std::vector<uint32_t> bestOrderLoops = {2, 2, 8, 8, 8};

    // Convolution paramters
    auto stride = 1;
    auto padding = 0;

    // Test parameters
    const uint32_t ORDER_NUMBER = std::stoi(argv[1]);
    const uint32_t N_TESTS = std::stoi(argv[2]);

    constexpr uint32_t N_LAYERS = 5;

    Chronometer chronometer;
    chronometer.start();
    Statistics stat;
    for (int i = 0; i < N_TESTS; i++) {
        float executionTime = 0.0;
        for(int l = 0; l < N_LAYERS; l++) {
            auto orderNumber = ORDER_NUMBER != 100 ? ORDER_NUMBER : bestOrderLoops[l];
            // Print info
            std::cout << "# Layer: " << l+1 << std::endl;
            std::cout << "Input -> " << "Hi: " << inputs[l].getHeight() << ", Wi: " << inputs[l].getWidth() << ", Ci: " << inputs[l].getNChannels() << std::endl;
            std::cout << "Kernel -> " << "Hf: " << kernels[l].getHeight() << ", Wf: " << kernels[l].getWidth() 
            << ", Ef: " << kernels[l].getNElements() << ", Cf: " << kernels[l].getNChannels() << std::endl;
            std::cout << "Order number: " << orderNumber << std::endl;
            // Convolution
            float executionTimeLocal = 0.0;
            auto output = inputs[l].convolveNaive(&kernels[l], stride, padding, orderNumber, &executionTimeLocal);
            executionTime += executionTimeLocal;
        }
        stat.addToCollection(executionTime);
    }
    std::cout << "N. test: " << N_TESTS << std::endl;
    std::cout << "Execution time (Median):\t" << stat.getMedian() << " ms\n";
    chronometer.stop();
    std::cout << "Execution time (Division):\t" << chronometer.getTime() / float(N_TESTS) << " ms\n";
    std::cout << "__________________________________________________________\n";  
    return 0;
}
