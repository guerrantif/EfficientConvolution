#include <iostream>
#include <cassert>
#include <thread>

#include "Tensor.hh"
#include "Statistics.h"

int main(int argc, char const *argv[]){
    typedef float DType;

    // Input Dimension
    constexpr uint32_t Ei = 1;
    constexpr uint32_t Ci = 1;
    constexpr uint32_t Hi = 10;
    constexpr uint32_t Wi = 10;

    // Kernel Dimension
    constexpr uint32_t Ef = 1;
    constexpr uint32_t Cf = 1;
    constexpr uint32_t Hf = 5;
    constexpr uint32_t Wf = 5;

    // Convolution parameters
    auto stride = 1;
    auto padding = 0;
    auto nThreads = std::thread::hardware_concurrency();

    // Test parameters
    constexpr uint32_t WARMUP_CYCLES = 10;
    constexpr uint32_t TEST_CYCLES = 5;

    // Create input and kernel
    Tensor<DType> image{Ei,Ci,Hi,Hi,tensor::init::RAND};
    Tensor<DType> kernel{Ef,Cf,Hf,Wf,tensor::init::RAND};

    /************************* Test Naive *************************************/
    {
        // WARM-UP
        // for(auto i = 0; i < WARMUP_CYCLES; i++) {
        //     float time = 0.0;
        //     auto output = image.convolveNaive(kernel, stride, padding);
        // }
        // CONVOLUTION
        Statistics stat;
        for(auto i = 0; i < TEST_CYCLES; i++) {
            float executionTime = 0.0;
            auto output = image.convolveNaive(kernel, stride, padding, &executionTime);
            stat.addToCollection(executionTime);
        }
        std::cout << "time Naive: " << stat.getMedian() << " ms\n";
    }
    /**************************************************************************/

    // Tensor<DType> output1 = image.convolveNaive(kernel, stride, padding);
    // Tensor<DType> output2 = image.convolveParallelHo(kernel, stride, padding, nThreads);
    // Tensor<DType> output3 = image.convolveParallelCo(kernel, stride, padding, nThreads);
    // Tensor<DType> output4 = image.convolveParallelEo(kernel, stride, padding, nThreads);

    return 0;
}
