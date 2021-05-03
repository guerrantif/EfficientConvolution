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
Kernel<T>::Kernel(const uint32_t& nElements_, const uint32_t& height_, const uint32_t& width_, const uint32_t& nChannels_, const tensor::init& init)
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



template class Kernel<float>;