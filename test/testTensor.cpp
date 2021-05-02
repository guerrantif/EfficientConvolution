#include <iostream>
#include <cassert>

#include "Tensor.hh"


int main(int argc, char const *argv[]){

    typedef float DType;

    Tensor<DType> image{3,400, 400,tensor::init::INCR};
    Tensor<DType> kernel{1,3,4,4,tensor::init::INCR};

    auto stride = 1;
    auto padding = 1;
    auto nThreads = 4;

    float time1 = 0.0;
    Tensor<DType> output1 = image.convolveNaive(kernel, stride, padding, &time1);

    float time2 = 0.0;
    Tensor<DType> output2 = image.convolveNaive2(kernel, stride, padding, &time2);

    std::cout << "Time 1: " << time1 << std::endl;
    std::cout << "Time 2: " << time2 << std::endl;

    return 0;
}
