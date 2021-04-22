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
    constexpr uint32_t Hi = 5;
    constexpr uint32_t Wi = Hi;

    // Kernel Dimension
    constexpr uint32_t Ef = 1;
    constexpr uint32_t Cf = 1;
    constexpr uint32_t Hf = 2;
    constexpr uint32_t Wf = 2;

    std::cout << "Ei: " << Ei << ", Ci: " << Ci << ", Hi: " << Hi << ", Wi: " << Wi << std::endl;
    std::cout << "Ef: " << Ef << ", Cf: " << Cf << ", Hf: " << Hf << ", Wf: " << Wf << std::endl;
    std::cout << "__________________________________________________________\n";

    // Convolution parameters
    auto stride = 1;
    auto padding = 0;
    auto maxNThreads = std::thread::hardware_concurrency();

    // Test parameters
    constexpr uint32_t WARMUP_CYCLES = 0;
    constexpr uint32_t TEST_CYCLES = 1;

    // Create input and kernel
    Tensor<DType> image{Ei,Ci,Hi,Hi,tensor::init::RAND};
    Tensor<DType> kernel{Ef,Cf,Hf,Wf,tensor::init::RAND};

    /***************************** Test Naive *************************************/
    {
        // WARM-UP
        for(auto i = 0; i < WARMUP_CYCLES; i++) {
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

    /*************************** Test Naive SSE ***********************************/
    {
        // WARM-UP
        for(auto i = 0; i < WARMUP_CYCLES; i++) {
            auto output = image.convolveNaiveSSE(kernel, stride, padding);
        }
        // CONVOLUTION
        Statistics stat;
        for(auto i = 0; i < TEST_CYCLES; i++) {
            float executionTime = 0.0;
            auto output1 = image.convolveNaiveSSE(kernel, stride, padding, &executionTime);
            auto output2 = image.convolveNaive(kernel, stride, padding, &executionTime);
            std::cout << "output1: " << output1.getNChannels() << ", " << output1.getHeight() << ", " << output1.getHeight() << std::endl;
            std::cout << "output2: " << output2.getNChannels() << ", " << output2.getHeight() << ", " << output2.getHeight() << std::endl;
             
            bool areEqual = output2 == output1;
            stat.addToCollection(executionTime);
        }
        std::cout << "time Naive (SSE): " << stat.getMedian() << " ms\n";
    }
    std::cout << "__________________________________________________________\n";
    /**************************************************************************/


    // /******************** Test Convolve Parallel Ho ***************************/
    {
        for(auto nThreads = 2; nThreads <= maxNThreads; nThreads++) {
            // WARM-UP
            for(auto i = 0; i < WARMUP_CYCLES; i++) {
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
    {
        for(auto nThreads = 2; nThreads <= maxNThreads; nThreads++) {
            // WARM-UP
            for(auto i = 0; i < WARMUP_CYCLES; i++) {
                auto output = image.convolveParallelEo(kernel, stride, padding, nThreads);
            }
            // CONVOLUTION
            Statistics stat;
            for(auto i = 0; i < TEST_CYCLES; i++) {
                float executionTime = 0.0;
                auto output = image.convolveParallelEo(kernel, stride, padding, nThreads, &executionTime);
                stat.addToCollection(executionTime);
            }
            std::cout << "time Convolve_Eo (" << nThreads << " threads): " << stat.getMedian() << " ms\n";
        }
    }
    std::cout << "__________________________________________________________\n";
    /**************************************************************************/

    return 0;
}
