#include <iostream>
#include <cassert>

#include "Tensor.hh"
#include "Kernel.hh"


int main(int argc, char const *argv[]){

    typedef float DType;

    Kernel<DType> kernel1{12, 3, 3, 3, tensor::init::INCR};
    std::cout << "kernel size: " << kernel1.getSize() << std::endl;
    std::cout << "kernel nElements: " << kernel1.getNElements() << std::endl;
    std::cout << "kernel height: " << kernel1.getHeight() << std::endl;
    std::cout << "kernel width: " << kernel1.getWidth() << std::endl;
    std::cout << "kernel nChannels: " << kernel1.getNChannels() << std::endl;

    auto kernel2{std::move(kernel1)};
    std::cout << "----------------\n";
    std::cout << "kernel size: " << kernel2.getSize() << std::endl;
    std::cout << "kernel nElements: " << kernel2.getNElements() << std::endl;
    std::cout << "kernel height: " << kernel2.getHeight() << std::endl;
    std::cout << "kernel width: " << kernel2.getWidth() << std::endl;
    std::cout << "kernel nChannels: " << kernel2.getNChannels() << std::endl;


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
