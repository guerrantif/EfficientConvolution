#include <iostream>
#include <cassert>

#include "Tensor.hh"


int main(int argc, char const *argv[]){

    typedef float DType;

    Tensor<DType> image{1,1,4,4,tensor::init::INCR};
    Tensor<DType> kernel{1,1,3,3,tensor::init::INCR};

    auto stride = 1;
    auto padding = 1;
    auto nThreads = 4;
    
    Tensor<DType> output1 = image.convolveNaive(kernel, stride, padding);
    // Tensor<DType> output2 = image.convolveParallelHo(kernel, stride, padding, nThreads);
    // Tensor<DType> output3 = image.convolveParallelCo(kernel, stride, padding, nThreads);
    // Tensor<DType> output4 = image.convolveParallelEo(kernel, stride, padding, nThreads);

    return 0;
}
