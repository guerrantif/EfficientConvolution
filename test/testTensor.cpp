#include <iostream>

#include "Tensor.hh"


int main(int argc, char const *argv[]){
    
    typedef float DType;

    Tensor<DType> image{7,3,10,10,tensor::init::INCR};
    Tensor<DType> kernel{10,3,3,3,tensor::init::INCR};

    auto stride = 1;
    auto padding = 0;
    auto nThreads = 4;

    Tensor<DType> output1 = image.convolveParallelEo(kernel, stride, padding, nThreads);
    Tensor<DType> output2 = image.convolveNaive(kernel, stride, padding);

    std::cout << (output1 == output2) << std::endl;

    return 0;
}