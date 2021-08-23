#include <iostream>
#include <cassert>
#include <string>

#include "Tensor.hh"
#include "Kernel.hh"
#include "Statistics.h"
#include "Chronometer.hh"


int main(int argc, char const *argv[]){

    // Manage the input arguments 
    // arg[1]:  Size of images
    // arg[2]:  Depth of images
    // arg[3]:  Size of kernels
    // arg[4]:  Number of kernels
    // arg[5]:  Number of blocked channel of input tensor
    // arg[6]:  Number of blocked channel of output tensor
    // arg[7]:  Order number of for loops
    // arg[8]:  Number of tests to do
    if(argc != 10) {
        std::cerr << "Please insert 6 arguments as follow:\n";
        std::cout << "arg[1]:  Size of images\n";
        std::cout << "arg[2]:  Depth of images\n";
        std::cout << "arg[3]:  Size of kernels\n";
        std::cout << "arg[4]:  Number of kernels\n";
        std::cout << "arg[5]:  Number of blocked channel of input tensor\n";
        std::cout << "arg[6]:  Number of blocked channel of output tensor\n";
        std::cout << "arg[7]:  Number of blocked width of output tensor\n";
        std::cout << "arg[8]:  Order number of for loops\n";
        std::cout << "arg[9]:  Number of tests to do\n";
        return 1;
    }

    // Input dimensions
    const uint32_t Hi = std::stoi(argv[1]);
    const uint32_t Wi = std::stoi(argv[1]);
    const uint32_t Ci = std::stoi(argv[2]);
    // Kernel dimensions
    const uint32_t Hf = std::stoi(argv[3]);
    const uint32_t Wf = std::stoi(argv[3]);
    const uint32_t Cf = Ci;
    const uint32_t Ef = std::stoi(argv[4]);
    // Blocked dimensions
    const int32_t Cib = std::stoi(argv[5]);
    const int32_t Cob = std::stoi(argv[6]);
    const int32_t Wob = std::stoi(argv[7]);

    typedef float DType;

    Tensor<DType> image{Hi, Wi, Ci,tensor::init::INCR};         // H, W, C
    Kernel<DType> kernel{Hf, Wf, Ef, Cf,tensor::init::INCR};    // H, W, E, C

    // Convolution paramters
    auto stride = 1;
    auto padding = 0;

    // Test parameters
    const uint32_t ORDER_NUMBER = std::stoi(argv[8]);
    const uint32_t N_TESTS = std::stoi(argv[9]);

    // Print info
    std::cout << "Input -> " << "Hi: " << Hi << ", Wi: " << Wi << ", Ci: " << Ci << std::endl;
    std::cout << "Kernel -> " << "Hf: " << Hf << ", Wf: " << Wf << ", Ef: " << Ef << ", Cf: " << Cf << std::endl;
    std::cout << "Blocked dimensions -> " << "Cib: " << Cib << ", Cob: " << Cob << ", Wob: " << Wob <<  std::endl;
    std::cout << "N. test: " << N_TESTS << std::endl;
    std::cout << "Order number: " << ORDER_NUMBER << std::endl;

    {
    // CONVOLUTION
    Chronometer chronometer; // Used for "Divsion" time (Used when the execution time is to short to be collected)
    chronometer.start(); 
    Statistics stat;
    for(auto i = 0; i < N_TESTS; i++) {
        float executionTime = 0.0;
        auto output = image.convolveMemoryBlocking(&kernel, stride, padding, Cib, Cob, Wob, ORDER_NUMBER, &executionTime);
        stat.addToCollection(executionTime);
    }
    chronometer.stop();
    std::cout << "Execution time (Median):\t" << stat.getMedian() << " ms\n";
    std::cout << "Execution time (Minimum):\t" << stat.getMin() << " ms\n";
    std::cout << "Execution time (Division):\t" << chronometer.getTime() / float(N_TESTS) << " ms\n";
    }

    auto orderToTest = 1;
    auto output = image.convolveMemoryBlocking(&kernel, stride, padding, 32, 32, 32, orderToTest);
    auto output_opt = image.convolveMemoryBlocking(&kernel, stride, padding, 64, 64, 64, orderToTest);
    std::cout << "Are they equal? " << (output == output_opt) << std::endl;

    // for(int i = 0; i < output.getSize(); i++) { std::cout << "Naive: " << output.getData()[i] << std::endl; }
    // for(int i = 0; i < output_opt.getSize(); i++) { std::cout << "Memb: " <<output_opt.getData()[i] << std::endl; }
    std::cout << "__________________________________________________________\n";   
    return 0;
}
