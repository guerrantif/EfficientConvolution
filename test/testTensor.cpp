#include <iostream>

#include "Tensor.hh"


int main(int argc, char const *argv[])
{
    try{
        Tensor<double> t1{3, 32, 32, tensor::init::RAND};
        //Tensor<int> t1{3, 32, 32, tensor::init::RAND};
        Tensor<double> t2{3, 32, 32, tensor::init::ONES};
        Tensor<double> t3{3, 3, 32, 32, tensor::init::ZEROS};
        Tensor<double> t4{3, 3, 32, 32, tensor::init::INCR};
        Tensor<double> t5 = t2 * 4;
        Tensor<double> t6 = t5 + 2;
        std::cout << t1[19] << std::endl;
        std::cout << t1.at(1, 20, 20) << std::endl;
        //std::cout << t1.at(1, 20, 200) << std::endl;
        //std::cout << t1.at(-2, 20, 20) << std::endl;
        std::cout << t2.at(1, 20, 20) << std::endl;
        std::cout << t3.at(1, 1, 20, 20) << std::endl;
        std::cout << t4.at(1, 1, 20, 20) << std::endl;
        std::cout << t5.at(0, 1, 20, 20) << std::endl;
        std::cout << t6.at(0, 1, 20, 20) << std::endl;
    }
    catch(const std::exception& e){
        std::cerr << e.what() << '\n';
    }
    
    return 0;
}
