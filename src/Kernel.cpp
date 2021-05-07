#include "Kernel.hh"

// Default constructor
template <class T>
Kernel<T>::Kernel() : Tensor<T>() {}

// 3D constructor
template <class T>
Kernel<T>::Kernel(const uint32_t& height_, const uint32_t& width_, const uint32_t& nChannels_, const tensor::init& init)
    : Tensor<T>(height_, width_, nChannels_, init) {}

// 4D constructor
template <class T>
Kernel<T>::Kernel(const uint32_t& height_, const uint32_t& width_, const uint32_t& nElements_, const uint32_t& nChannels_, const tensor::init& init)
    : Tensor<T>(nElements_, height_, width_, nChannels_, init) {}

// Copy constructor
template <class T>
Kernel<T>::Kernel(const Kernel<T>& other) : Tensor<T>{other} {}

// Move constructor
template <class T>
Kernel<T>::Kernel(Kernel<T>&& other) : Tensor<T>{std::move(other)} {}

// Destructor
template <class T>
Kernel<T>::~Kernel() {}


// ################# Private operators at() #################
// 4D operator at() const
template <class T>
const T& Kernel<T>::_at(const uint32_t H_idx, const uint32_t W_idx, const uint32_t E_idx, const uint32_t C_idx) const  {
    // std::cout << "KERNEL\n";
    return this->data[(H_idx * this->width * this->nElements * this->nChannels) + (W_idx * this->nElements * this->nChannels) + (E_idx * this->nChannels) + (C_idx)];
}

// 4D operator at() non-const
template <class T>
T& Kernel<T>::_at(const uint32_t H_idx, const uint32_t W_idx, const uint32_t E_idx, const uint32_t C_idx) {
    // std::cout << "KERNEL\n";
    return this->data[(H_idx * this->width * this->nElements * this->nChannels) + (W_idx * this->nElements * this->nChannels) + (E_idx * this->nChannels) + (C_idx)];
}

// ################# Public operators at() #################
// 4D operator at() const
template <class T>
const T& Kernel<T>::at(const uint32_t H_idx, const uint32_t W_idx, const uint32_t E_idx, const uint32_t C_idx) const  {
    assert(H_idx >= 0 && H_idx < this->height);
    assert(W_idx >= 0 && W_idx < this->width);
    assert(E_idx >= 0 && E_idx < this->nElements);
    assert(C_idx >= 0 && C_idx < this->nChannels);
    // std::cout << "KERNEL\n";
    return this->data[(H_idx * this->width * this->nElements * this->nChannels) + (W_idx * this->nElements * this->nChannels) + (E_idx * this->nChannels) + (C_idx)];
}

// 4D operator at() non-const
template <class T>
T& Kernel<T>::at(const uint32_t H_idx, const uint32_t W_idx, const uint32_t E_idx, const uint32_t C_idx) {
    assert(H_idx >= 0 && H_idx < this->height);
    assert(W_idx >= 0 && W_idx < this->width);
    assert(E_idx >= 0 && E_idx < this->nElements);
    assert(C_idx >= 0 && C_idx < this->nChannels);
    // std::cout << "KERNEL\n";
    return this->data[(H_idx * this->width * this->nElements * this->nChannels) + (W_idx * this->nElements * this->nChannels) + (E_idx * this->nChannels) + (C_idx)];
}

template class Kernel<float>;