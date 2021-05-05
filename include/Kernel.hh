#ifndef __KERNEL_H__
#define __KERNEL_H__

#include <cassert>

#include "Tensor.hh"

template<class T> 
class Kernel : public Tensor<T>{
protected:
    // ################# Private operators at() #################
    // 4D operator at() const
    virtual const T& _at(const uint32_t H_idx, const uint32_t W_idx, const uint32_t E_idx, const uint32_t C_idx) const;
    // 4D operator at() non-const
    virtual T& _at(const uint32_t H_idx, const uint32_t W_idx, const uint32_t E_idx, const uint32_t C_idx);
public:
    // Default constructor
    Kernel();
    // 3D constructor
    Kernel(const uint32_t& height_, const uint32_t& width_, const uint32_t& nChannels_, const tensor::init& init);
    // 4D constructor
    Kernel(const uint32_t& height_, const uint32_t& width_, const uint32_t& nChannels_, const uint32_t& nElements_, const tensor::init& init);
    // Copy constructor
    Kernel(const Kernel<T>& other);
    // Move constructor
    Kernel(Kernel<T>&& other);
    
    // Destructor
    virtual ~Kernel();

    // 4D operator at() const
    virtual const T& at(const uint32_t H_idx, const uint32_t W_idx, const uint32_t E_idx, const uint32_t C_idx) const;
    // 4D operator at() non-const
    virtual T& at(const uint32_t H_idx, const uint32_t W_idx, const uint32_t E_idx, const uint32_t C_idx);


};

#endif