#include <iostream>
#include <cassert>

#include "Tensor.hh"
#include "Kernel.hh"
#include "Statistics.h"


int main(int argc, char const *argv[]){

    typedef float DType;

    // Input dimensions
    constexpr uint32_t Hi = 600;
    constexpr uint32_t Wi = 600;
    constexpr uint32_t Ci = 3;
    // Kernel dimensions
    constexpr uint32_t Hf = 5;
    constexpr uint32_t Wf = 5;
    constexpr uint32_t Cf = Ci;
    constexpr uint32_t Ef = 32;

    Tensor<DType> image{Hi, Wi, Ci,tensor::init::INCR};  // H, W, C
    Kernel<DType> kernel{Hf, Wf, Cf, Ef,tensor::init::INCR};   // H, W, C, E

    // Convolution paramters
    auto stride = 1;
    auto padding = 0;

    // Test parameters
    constexpr uint32_t N_TESTS = 1;

    {
    // CONVOLUTION
    Statistics stat;
    for(auto i = 0; i < N_TESTS; i++) {
        float executionTime = 0.0;
        auto output = image.convolveNaive2(kernel, stride, padding, &executionTime);
        stat.addToCollection(executionTime);
    }
    std::cout << "Execution time: " << stat.getMedian() << " ms\n";
    }
    std::cout << "__________________________________________________________\n";   
    return 0;
}
