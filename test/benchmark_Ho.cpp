#include <iostream>
#include <cassert>
#include <thread>
#include <fstream>
#include <string>

#include "Tensor.hh"
#include "Statistics.h"

#define NAME_OF(var) #var

void readConf(const std::string& filePath,
    uint32_t& Ei, uint32_t& Ci, uint32_t& Hi, uint32_t& Wi,
    uint32_t& Ef, uint32_t& Cf, uint32_t& Hf, uint32_t& Wf
    ) {
        std::ifstream is(filePath);
        if(!is.good()) std::cerr << "Could not open the file: " << filePath << std::endl;
        
        std::string variableName = "";
        std::string value = "";
        while(is >> variableName >> value) {
            if(NAME_OF(Ei) == variableName) Ei = stoi(value);
            if(NAME_OF(Ci) == variableName) Ci = stoi(value);
            if(NAME_OF(Hi) == variableName) Hi = stoi(value);
            if(NAME_OF(Wi) == variableName) Wi = stoi(value);

            if(NAME_OF(Ef) == variableName) Ef = stoi(value);
            if(NAME_OF(Cf) == variableName) Cf = stoi(value);
            if(NAME_OF(Hf) == variableName) Hf = stoi(value);
            if(NAME_OF(Wf) == variableName) Wf = stoi(value);
        }
    }   

int main(int argc, char const *argv[]){

    if(argc != 2) {
        std::cerr << "Insert the number of thread. Ex: ./bin/benchmark 4\n";
        return 1;
    }

    typedef float DType;

    constexpr uint32_t Ei = 100;
    constexpr uint32_t Ci = 3;
    constexpr uint32_t Hi = 200;
    constexpr uint32_t Wi = Hi;

    // Kernel Dimension
    constexpr uint32_t Ef = 32;
    constexpr uint32_t Cf = 3;
    constexpr uint32_t Hf = 5;
    constexpr uint32_t Wf = Hf;

    std::cout << "Ei: " << Ei << ", Ci: " << Ci << ", Hi: " << Hi << ", Wi: " << Wi << std::endl;
    std::cout << "Ef: " << Ef << ", Cf: " << Cf << ", Hf: " << Hf << ", Wf: " << Wf << std::endl;
    std::cout << "__________________________________________________________\n";

    // Convolution parameters
    auto stride = 1;
    auto padding = 0;

    // Parallel parameters
    auto nThreads = atoi(argv[1]);

    // Test parameters
    constexpr uint32_t WARMUP_CYCLES = 0;
    constexpr uint32_t TEST_CYCLES = 1;

    // Create input and kernel
    Tensor<DType> image{Ei,Ci,Hi,Hi,tensor::init::RAND};
    Tensor<DType> kernel{Ef,Cf,Hf,Wf,tensor::init::RAND};


    // /******************** Test Convolve Parallel Ho ***************************/
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

    std::cout << "__________________________________________________________\n";
    /**************************************************************************/

    return 0;
}
