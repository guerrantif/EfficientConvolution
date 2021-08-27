#include <iostream>
#include <cassert>
#include <string>

#include "Tensor.hh"
#include "Kernel.hh"
#include "Statistics.h"
#include "Chronometer.hh"


int main(int argc, char const *argv[]){
    // Input dimensions
    const uint32_t Hi = 227;
    const uint32_t Wi = Hi;
    const uint32_t Ci = 3;
    // Kernel dimensions
    const uint32_t Hf = 11;
    const uint32_t Wf = Hf;
    const uint32_t Cf = Ci;
    const uint32_t Ef = 96;

    typedef float DType;

    Tensor<DType> image{Hi, Wi, Ci,tensor::init::INCR};         // H, W, C
    Kernel<DType> kernel{Hf, Wf, Ef, Cf,tensor::init::INCR};    // H, W, E, C

    // Convolution paramters
    auto stride = 1;
    auto padding = 0;

    // Test parameters
    const uint32_t ORDER_NUMBER = 2;
    const uint32_t N_TESTS = 1;

    // Print info
    std::cout << "Input -> " << "Hi: " << Hi << ", Wi: " << Wi << ", Ci: " << Ci << std::endl;
    std::cout << "Kernel -> " << "Hf: " << Hf << ", Wf: " << Wf << ", Ef: " << Ef << ", Cf: " << Cf << std::endl;
    std::cout << "N. test: " << N_TESTS << std::endl;
    std::cout << "Order number: " << ORDER_NUMBER << std::endl;

    {
    // CONVOLUTION
    Chronometer chronometer; // Used for "Divsion" time (Used when the execution time is to short to be collected)
    chronometer.start(); 
    Statistics stat;
    for(auto i = 0; i < N_TESTS; i++) {
        float executionTime = 0.0;
        if constexpr (LLVM_NAIVE_2) __asm volatile (" #LLVM-MCA-BEGIN convolveNaive_2 ");
        auto output = image.convolveNaive(&kernel, stride, padding, ORDER_NUMBER, &executionTime);
        if constexpr (LLVM_NAIVE_2) __asm volatile (" #LLVM-MCA-END convolveNaive_2 ");
        stat.addToCollection(executionTime);
    }
    chronometer.stop();
    std::cout << "Execution time (Median):\t" << stat.getMedian() << " ms\n";
    std::cout << "Execution time (Minimum):\t" << stat.getMin() << " ms\n";
    std::cout << "Execution time (Division):\t" << chronometer.getTime() / float(N_TESTS) << " ms\n";
    }
    std::cout << "__________________________________________________________\n";   
    return 0;
}
