#include <iostream>
#include <cassert>

#include "Tensor.hh"


int main(int argc, char const *argv[]){
    
    // input example: ... 7 3 100 100 10 3 5 5
    assert(argc == 9);

    typedef float DType;

    Tensor<DType> image{atoi(argv[1]),atoi(argv[2]),atoi(argv[3]),atoi(argv[4]),tensor::init::INCR};
    Tensor<DType> kernel{atoi(argv[5]),atoi(argv[6]),atoi(argv[7]),atoi(argv[8]),tensor::init::INCR};

    auto stride = 1;
    auto padding = 0;
    auto nThreads = 4;

    Tensor<DType> output1 = image.convolveNaive(kernel, stride, padding);
    Tensor<DType> output2 = image.convolveParallelHo(kernel, stride, padding, nThreads);
    Tensor<DType> output3 = image.convolveParallelCo(kernel, stride, padding, nThreads);
    Tensor<DType> output4 = image.convolveParallelEo(kernel, stride, padding, nThreads);

    return 0;
}