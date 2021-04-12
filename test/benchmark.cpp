#include <iostream>
#include <cassert>
#include <thread>

#include "Tensor.hh"
#include "Statistics.h"

int main(int argc, char const *argv[]){
    typedef float DType;

    // Input Dimension
    constexpr uint32_t Ei = 1;
    constexpr uint32_t Ci = 3;
    constexpr uint32_t Hi = 600;
    constexpr uint32_t Wi = 600;

    // Kernel Dimension
    constexpr uint32_t Ef = 64;
    constexpr uint32_t Cf = 3;
    constexpr uint32_t Hf = 5;
    constexpr uint32_t Wf = 5;

    std::cout << "Ei: " << Ei << ", Ci: " << Ci << ", Hi: " << Hi << ", Wi: " << Wi << std::endl;
    std::cout << "Ef: " << Ef << ", Cf: " << Cf << ", Hf: " << Hf << ", Wf: " << Wf << std::endl;
    std::cout << "__________________________________________________________\n";

    // Convolution parameters
    auto stride = 1;
    auto padding = 0;
    auto maxNThreads = std::thread::hardware_concurrency();

    // Test parameters
    constexpr uint32_t WARMUP_CYCLES = 0;
    constexpr uint32_t TEST_CYCLES = 2;

    // Create input and kernel
    Tensor<DType> image{Ei,Ci,Hi,Hi,tensor::init::RAND};
    Tensor<DType> kernel{Ef,Cf,Hf,Wf,tensor::init::RAND};

    /************************* Test Naive *************************************/
    {
        // WARM-UP
        for(auto i = 0; i < WARMUP_CYCLES; i++) {
            float time = 0.0;
            auto output = image.convolveNaive(kernel, stride, padding);
        }
        // CONVOLUTION
        Statistics stat;
        for(auto i = 0; i < TEST_CYCLES; i++) {
            float executionTime = 0.0;
            auto output = image.convolveNaive(kernel, stride, padding, &executionTime);
            stat.addToCollection(executionTime);
        }
        std::cout << "time Naive: " << stat.getMedian() << " ms\n";
    }
    std::cout << "__________________________________________________________\n";
    /**************************************************************************/


    // /******************** Test Convolve Parallel Ho ***************************/
    {
        for(auto nThreads = 2; nThreads <= maxNThreads; nThreads++) {
            // WARM-UP
            for(auto i = 0; i < WARMUP_CYCLES; i++) {
                float time = 0.0;
                auto output = image.convolveParallelHo(kernel, stride, padding, nThreads);
            }
            // CONVOLUTION
            Statistics stat;
            for(auto i = 0; i < TEST_CYCLES; i++) {
                float executionTime = 0.0;
                auto output = image.convolveParallelHo(kernel, stride, padding, nThreads, &executionTime);
                stat.addToCollection(executionTime);
            }
            std::cout << "time Convolve_Ho (" << nThreads << " threads): " << stat.getMedian() << " ms\n";
        }
    }
    std::cout << "__________________________________________________________\n";
    /**************************************************************************/


    /******************** Test Convolve Parallel Co ***************************/
    {
        for(auto nThreads = 2; nThreads <= maxNThreads; nThreads++) {
            // WARM-UP
            for(auto i = 0; i < WARMUP_CYCLES; i++) {
                float time = 0.0;
                auto output = image.convolveParallelCo(kernel, stride, padding, nThreads);
            }
            // CONVOLUTION
            Statistics stat;
            for(auto i = 0; i < TEST_CYCLES; i++) {
                float executionTime = 0.0;
                auto output = image.convolveParallelCo(kernel, stride, padding, nThreads, &executionTime);
                stat.addToCollection(executionTime);
            }
            std::cout << "time Convolve_Co (" << nThreads << " threads): " << stat.getMedian() << " ms\n";
        }
    }
    std::cout << "__________________________________________________________\n";
    /**************************************************************************/

    /******************** Test Convolve Parallel Eo ***************************/
    // {
    //     for(auto nThreads = 2; nThreads <= maxNThreads; nThreads++) {
    //         // WARM-UP
    //         for(auto i = 0; i < WARMUP_CYCLES; i++) {
    //             float time = 0.0;
    //             auto output = image.convolveParallelEo(kernel, stride, padding, nThreads);
    //         }
    //         // CONVOLUTION
    //         Statistics stat;
    //         for(auto i = 0; i < TEST_CYCLES; i++) {
    //             float executionTime = 0.0;
    //             auto output = image.convolveParallelEo(kernel, stride, padding, nThreads, &executionTime);
    //             stat.addToCollection(executionTime);
    //         }
    //         std::cout << "time Convolve_Eo (" << nThreads << " threads): " << stat.getMedian() << " ms\n";
    //     }
    // }
    // std::cout << "__________________________________________________________\n";
    /**************************************************************************/

    return 0;
}
