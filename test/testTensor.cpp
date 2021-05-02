#include <iostream>
#include <cassert>

#include "Tensor.hh"


int main(int argc, char const *argv[]){

    typedef float DType;

    Tensor<DType> image{500,500, 10,tensor::init::INCR}; // 
    // std::cout << "image size: " << image.getSize() << std::endl;
    // std::cout << "image height: " << image.getHeight() << std::endl;
    // std::cout << "image width: " << image.getWidth() << std::endl;
    // std::cout << "image nChannels: " << image.getNChannels() << std::endl;
    Tensor<DType> kernel{1,5,5, 10,tensor::init::INCR};

    auto stride = 1;
    auto padding = 0;
    auto nThreads = 4;

    float time1 = 0.0;
    Tensor<DType> output1 = image.convolveNaive(kernel, stride, padding, &time1);

    float time2 = 0.0;
    Tensor<DType> output2 = image.convolveNaive2(kernel, stride, padding, &time2);

    std::cout << "Time 1: " << time1 << std::endl;
    std::cout << "Time 2: " << time2 << std::endl;

    return 0;
}
