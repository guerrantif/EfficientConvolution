#include <iostream>
#include <cassert>

#include "Tensor.hh"
#include "Kernel.hh"


int main(int argc, char const *argv[]){

    typedef float DType;

    uint32_t nElements = 1;
    uint32_t height = 3;
    uint32_t width = 2;
    uint32_t nChannels = 4;
    Kernel<DType> kernel1{height, width, nChannels, nElements, tensor::init::INCR};
    std::cout << "kernel1 size: " << kernel1.getSize() << std::endl;
    std::cout << "kernel1 nElements: " << kernel1.getNElements() << std::endl;
    std::cout << "kernel1 height: " << kernel1.getHeight() << std::endl;
    std::cout << "kernel1 width: " << kernel1.getWidth() << std::endl;
    std::cout << "kernel1 nChannels: " << kernel1.getNChannels() << std::endl;
    for(auto n = 0; n < height; n++) {
        for(auto m = 0; m < width; m++) {
            for(auto j = 0; j < nElements; j++) {
                for(auto i = 0; i < nChannels; i++) {
                    std::cout << n << ", " << m << ", " << j << ", " << i << ": ";
                    std::cout << kernel1.at(n, m, j, i) << std::endl;
                }
            }
        }
    }


    // Tensor<DType> image{500,500, 10,tensor::init::INCR}; // 
    // // std::cout << "image size: " << image.getSize() << std::endl;
    // // std::cout << "image height: " << image.getHeight() << std::endl;
    // // std::cout << "image width: " << image.getWidth() << std::endl;
    // // std::cout << "image nChannels: " << image.getNChannels() << std::endl;
    // Tensor<DType> kernel{1,5,5, 10,tensor::init::INCR};

    // auto stride = 1;
    // auto padding = 0;
    // auto nThreads = 4;

    // float time1 = 0.0;
    // Tensor<DType> output1 = image.convolveNaive(kernel, stride, padding, &time1);

    // float time2 = 0.0;
    // Tensor<DType> output2 = image.convolveNaive2(kernel, stride, padding, &time2);

    // std::cout << "Time 1: " << time1 << std::endl;
    // std::cout << "Time 2: " << time2 << std::endl;

    return 0;
}
