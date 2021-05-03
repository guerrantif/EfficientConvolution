#ifndef __KERNEL_H__
#define __KERNEL_H__

#include "Tensor.hh"

template<class T> 
class Kernel : public Tensor<T>{
protected:
public:
    // Default constructor
    Kernel();
    // 3D constructor
    Kernel(const uint32_t& height_, const uint32_t& width_, const uint32_t& nChannels_, const tensor::init& init);
    // 4D constructor
    Kernel(const uint32_t& nElements_, const uint32_t& height_, const uint32_t& width_, const uint32_t& nChannels_, const tensor::init& init);
    // Copy constructor
    Kernel(const Kernel<T>& other);
    // Move constructor
    Kernel(Kernel<T>&& other);
    
    // Destructor
    virtual ~Kernel();

};

#endif