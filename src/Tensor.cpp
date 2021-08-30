#include <iostream>
#include <cmath>
#include <limits>
#include <thread>
#include <random>
#include <cassert>
#include <xmmintrin.h>
#include <immintrin.h>

#include "Tensor.hh"
#include "Kernel.hh"
#include "Chronometer.hh"

template <class T>
void Tensor<T>::init_data(const tensor::init& init) {
    assert(this->size != 0);
    // this->data = new T[this->size];
    posix_memalign((void**)&this->data, 16, (this->size)*sizeof(T)); // 16B Alignment

    if(init == tensor::init::ZEROS){
        if constexpr (DO_PRINT){
            std::cout << "init::ZEROS at (" << this << ")" << std::endl;
        }
        for (auto i = 0; i < this->size; i++){
            this->data[i] = T{0};
        }
    }
    else if(init == tensor::init::ONES){
        if constexpr (DO_PRINT){
            std::cout << "init::ONES at (" << this << ")" << std::endl;
        }
        for (auto i = 0; i < this->size; i++){
            this->data[i] = T{1};
        }
    }
    else if(init == tensor::init::INCR){
        if constexpr (DO_PRINT){
            std::cout << "init::INCR at (" << this << ")" << std::endl;
        }
        for (auto i = 0; i < this->size; i++){
            this->data[i] = static_cast<T>(i);
        }
    }
    else if(init == tensor::init::RAND){
        if constexpr (DO_PRINT){
            std::cout << "init::RAND at (" << this << ")" << std::endl;
        }
        static_assert((std::is_same<T, double>::value || std::is_same<T, float>::value || std::is_same<T, long double>::value), "Invalid type for tensor initialized with init::RAND. Types must be either float, double or long double.");
        std::random_device rd;
        std::mt19937 gen(rd());
        std::uniform_real_distribution<T> unif_distr(0,1);
        for (auto i = 0; i < this->size; i++){
            this->data[i] = unif_distr(gen);
        }
    }
}

// Default constructor
template <class T>
Tensor<T>::Tensor(){
    if constexpr (DO_PRINT){
        std::cout << "DEFAULT CONSTRUCTOR at (" << this << ")" << std::endl;
    }
    this->invalidate();
}

// 3D constructor
template <class T>
Tensor<T>::Tensor(const uint32_t& height_, const uint32_t& width_, const uint32_t& nChannels_, const tensor::init& init)
    : nElements{1}, height{height_}, width{width_}, nChannels{nChannels_}, valid{true}{
    if constexpr (DO_PRINT){
        std::cout << "3D CONSTRUCTOR at (" << this << ")" << std::endl;
    }
    this->size = this->nElements * this->nChannels * this->height * this->width;
    this->shape = {this->nElements, this->height, this->width, this->nChannels};
    this->init_data(init);
}

// 4D constructor
template <class T>
Tensor<T>::Tensor(const uint32_t& nElements_, const uint32_t& height_, const uint32_t& width_, const uint32_t& nChannels_, const tensor::init& init)
    : nElements{nElements_}, height{height_}, width{width_}, nChannels{nChannels_}, valid{true}{
    if constexpr (DO_PRINT){
        std::cout << "4D CONSTRUCTOR at (" << this << ")" << std::endl;
    }
    this->size = this->nElements * this->nChannels * this->height * this->width;
    this->shape = {this->nElements, this->height, this->width, this->nChannels};
    this->init_data(init);
}

// Copy constructor
template <class T>
Tensor<T>::Tensor(const Tensor<T>& other)
    :   nElements{other.nElements}, nChannels{other.nChannels},
        height{other.height}, width{other.width},
        size{other.size}, shape{other.shape}, valid{true}{
    if constexpr (DO_PRINT){
        std::cout << "COPY CONSTRUCTOR at (" << this << ") from (" << &other << ")" << std::endl;
    }
    this->data = new T[this->size];
    for(auto i = 0; i < size; i++){
        this->data[i] = other[i];
    }
}

// Move constructor
template <class T>
Tensor<T>::Tensor(Tensor<T>&& other)
    :   nElements{other.nElements}, nChannels{other.nChannels},
        height{other.height}, width{other.width}, size{other.size},
        shape{other.shape}, data{std::exchange(other.data, nullptr)}, valid{true}{
    if constexpr (DO_PRINT){
        std::cout << "MOVE CONSTRUCTOR at (" << this << ") from (" << &other << ")" << std::endl;
    }
    other.invalidate();
}

// Destructor
template <class T>
Tensor<T>::~Tensor() {
    if constexpr (DO_PRINT){
        std::cout << "DESTRUCTOR at (" << this << ") ";
    }
    if(this->data != nullptr){
        delete[] this->data;
        if constexpr (DO_PRINT) {
            std::cout << "- Data deallocation" << std::endl;
        }
    } else {
        if constexpr (DO_PRINT) {
            std::cout << "- Data was already deallocated before" << std::endl;
        }
    }
}

// Copy operator
template <class T>
Tensor<T>& Tensor<T>::operator=(const Tensor<T>& other){
    if constexpr (DO_PRINT){
        std::cout << "COPY OPERATOR at (" << this << ") from (" << &other << ")" << std::endl;
    }
    if(this != &other){
        this->~Tensor();
        this->nElements = other.nElements;
        this->nChannels = other.nChannels;
        this->height = other.height;
        this->width = other.width;
        this->size = other.size;
        this->shape = other.shape;
        this->data = new T[this->size];
        for(auto i = 0; i < size; i++){
            this->data[i] = other[i];
        }
        this->valid = true;
    }

    return *this;
}

// Move operator
template <class T>
Tensor<T>& Tensor<T>::operator=(Tensor<T>&& other){
    if constexpr (DO_PRINT){
        std::cout << "MOVE OPERATOR at (" << this << ") from (" << &other << ")" << std::endl;
    }
    if(this != &other){
        this->~Tensor();
        this->nElements = other.nElements;
        this->nChannels = other.nChannels;
        this->height = other.height;
        this->width = other.width;
        this->size = other.size;
        this->shape = other.shape;
        this->data = std::exchange(other.data, nullptr);
        this->valid = true;

        other.invalidate();
    }

    return *this;
}

// ################# Private operators at() #################
// 3D operator at() const
template <class T>
const T& Tensor<T>::_at(const uint32_t& H_idx, const uint32_t W_idx, const uint32_t& C_idx) const {
    // return this->data[(C_idx * this->height * this->width) + (H_idx * width) + (W_idx)];
    return this->data[(H_idx * this->width * this->nChannels) + (W_idx * nChannels) + (C_idx)];
}

// 3D operator at() non-const
template <class T>
T& Tensor<T>::_at(const uint32_t& H_idx, const uint32_t W_idx, const uint32_t& C_idx) {
    // return this->data[(C_idx * this->height * this->width) + (H_idx * width) + (W_idx)];
    return this->data[(H_idx * this->width * this->nChannels) + (W_idx * nChannels) + (C_idx)];
}

// 4D operator at() const
template <class T>
const T& Tensor<T>::_at(const uint32_t E_idx, const uint32_t H_idx, const uint32_t W_idx, const uint32_t C_idx) const {
    // return this->data[(E_idx * this->nChannels * this->height * this->width) + (C_idx * this->height * this->width) + (H_idx * width) + (W_idx)];
    std::cout << "TENSOR\n";
    return this->data[(E_idx * this->height * this->width * this->nChannels) + (H_idx * this->width * this->nChannels) + (W_idx * nChannels) + (C_idx)];
}

// 4D operator at() non-const
template <class T>
T& Tensor<T>::_at(const uint32_t E_idx, const uint32_t H_idx, const uint32_t W_idx, const uint32_t C_idx) {
    // return this->data[(E_idx * this->nChannels * this->height * this->width) + (C_idx * this->height * this->width) + (H_idx * width) + (W_idx)];
    std::cout << "TENSOR\n";
    return this->data[(E_idx * this->height * this->width * this->nChannels) + (H_idx * this->width * this->nChannels) + (W_idx * nChannels) + (C_idx)];
}

// ################# Public operators at() #################
// 3D operator at() const
template <class T>
const T& Tensor<T>::at(const uint32_t& H_idx, const uint32_t W_idx, const uint32_t& C_idx) const {
    assert(C_idx >= 0 && C_idx < this->nChannels);
    assert(H_idx >= 0 && H_idx < this->height);
    assert(W_idx >= 0 && W_idx < this->width);
    // auto idx = (C_idx * this->height * this->width) + (H_idx * width) + (W_idx);
    // return this->data[idx];
    return this->data[(H_idx * this->width * this->nChannels) + (W_idx * nChannels) + (C_idx)];
}

// 3D operator at() non-const
template <class T>
T& Tensor<T>::at(const uint32_t& H_idx, const uint32_t W_idx, const uint32_t& C_idx) {
    assert(C_idx >= 0 && C_idx < this->nChannels);
    assert(H_idx >= 0 && H_idx < this->height);
    assert(W_idx >= 0 && W_idx < this->width);
    // auto idx = (C_idx * this->height * this->width) + (H_idx * width) + (W_idx);
    // return this->data[idx];
    return this->data[(H_idx * this->width * this->nChannels) + (W_idx * nChannels) + (C_idx)];
}

// 4D operator at() const
template <class T>
const T& Tensor<T>::at(const uint32_t E_idx, const uint32_t H_idx, const uint32_t W_idx, const uint32_t C_idx) const {
    assert(E_idx >= 0 && E_idx < this->nElements);
    assert(C_idx >= 0 && C_idx < this->nChannels);
    assert(H_idx >= 0 && H_idx < this->height);
    assert(W_idx >= 0 && W_idx < this->width);
    // auto idx = (E_idx * this->nChannels * this->height * this->width) + (C_idx * this->height * this->width) + (H_idx * width) + (W_idx);
    // return this->data[idx];
    std::cout << "TENSOR\n";
    return this->data[(E_idx * this->height * this->width * this->nChannels) + (H_idx * this->width * this->nChannels) + (W_idx * nChannels) + (C_idx)];
}

// 4D operator at() non-const
template <class T>
T& Tensor<T>::at(const uint32_t E_idx, const uint32_t H_idx, const uint32_t W_idx, const uint32_t C_idx) {
    assert(E_idx >= 0 && E_idx < this->nElements);
    assert(C_idx >= 0 && C_idx < this->nChannels);
    assert(H_idx >= 0 && H_idx < this->height);
    assert(W_idx >= 0 && W_idx < this->width);
    // auto idx = (E_idx * this->nChannels * this->height * this->width) + (C_idx * this->height * this->width) + (H_idx * width) + (W_idx);
    // return this->data[idx];
    std::cout << "TENSOR\n";
    return this->data[(E_idx * this->height * this->width * this->nChannels) + (H_idx * this->width * this->nChannels) + (W_idx * nChannels) + (C_idx)];
}

// Operator[] const
template <class T>
const T& Tensor<T>::operator[](const int32_t idx) const {
    return this->data[idx];
}

// Operator[] non-const
template <class T>
T& Tensor<T>::operator[](const int32_t idx) {
    return this->data[idx];
}

// Operator* overloading
template <class T>
Tensor<T> Tensor<T>::operator*(const T& value){
    Tensor<T> output = this->copy();
    for(auto i = 0; i < this->size; i++){
        output.data[i] *= value;
    }
    return output;
}

// Operator+ overloading
template <class T>
Tensor<T> Tensor<T>::operator+(const T& value){
    Tensor<T> output = this->copy();
    for(auto i = 0; i < this->size; i++){
        output.data[i] += value;
    }
    return output;
}

template <class T>
bool Tensor<T>::operator==(const Tensor<T>& other) {
    if (!(this->shape == other.shape)) return false;
    for(auto i = 0; i < this->size; i++) {
        // std::cout << this->data[i] << " ?= " << other.data[i] << std::endl;
        if (abs(this->data[i] - other.data[i]) > 0.01) return false;
    }
    return true;
}


template <class T>
Tensor<T> Tensor<T>::copy(){
    Tensor<T> output{};

    output.size = this->size;
    output.shape = this->shape;
    output.nElements = this->nElements;
    output.nChannels = this->nChannels;
    output.height = this->height;
    output.width = this->width;
    output.valid = true;

    output.data = new T[this->size];
    for(auto i = 0; i < this->size; i++){
        output.data[i] = this->data[i];
    }

    return output;
}

// invalidate this tensor
template <class T>
void Tensor<T>::invalidate() {
    if(!this->valid){
        if(this->data != nullptr){
            this->data = nullptr;
        }
        this->nElements = 0;
        this->nChannels = 0;
        this->height = 0;
        this->width = 0;
        this->size = 0;
        this->shape = {};
        this->valid = false;
    }
}

// Check validity
template <class T>
bool Tensor<T>::isValid() const{
    return valid;
}

// Convolutions
template <class T>
Tensor<T>& Tensor<T>::convolve(const Tensor<T>& kernel, const uint32_t stride, const uint32_t padding, const uint32_t nThreads, float* executionTime) const {

    auto Eo = this->nElements;
    auto Co = kernel.nElements;
    auto Ho = (this->height - kernel.height + 2*padding) / stride + 1;

    auto Eo_over_Co = static_cast<float>(Eo)/static_cast<float>(Co);
    auto Co_over_Ho = static_cast<float>(Co)/static_cast<float>(Ho);

    auto threshold = 1;

    if(Eo_over_Co > threshold){ // more Elements than Channels in output tensor
        return this->convolveParallelEo(kernel, stride, padding, nThreads, executionTime);
    }
    else if(Co_over_Ho > threshold){ // more Channels than Height in output tensor
        return this->convolveParallelCo(kernel, stride, padding, nThreads, executionTime);
    }
    else {
        return this->convolveParallelHo(kernel, stride, padding, nThreads, executionTime);
    }
}

// Convolutions
template <class T>
Tensor<T>& Tensor<T>::convolve(const Tensor<T>& kernel, const uint32_t stride, const uint32_t padding, float* executionTime) const {

    // ------ TODO ------
    auto nThreads = 4;
    // ------------------

    auto Eo = this->nElements;
    auto Co = kernel.nElements;
    auto Ho = (this->height - kernel.height + 2*padding) / stride + 1;

    auto Eo_over_Co = static_cast<float>(Eo)/static_cast<float>(Co);
    auto Co_over_Ho = static_cast<float>(Co)/static_cast<float>(Ho);

    auto threshold = 1;

    if(Eo_over_Co > threshold){ // more Elements than Channels in output tensor
        return this->convolveParallelEo(kernel, stride, padding, nThreads, executionTime);
    }
    else if(Co_over_Ho > threshold){ // more Channels than Height in output tensor
        return this->convolveParallelCo(kernel, stride, padding, nThreads, executionTime);
    }
    else {
        return this->convolveParallelHo(kernel, stride, padding, nThreads, executionTime);
    }
}

// convolve thread (parallel)
template <class T>
void Tensor<T>::convolveThread(Tensor<T>& output, const Tensor<T>& kernel, const uint32_t stride, const uint32_t padding,
    const uint32_t start_Eo, const uint32_t end_Eo,
    const uint32_t start_Co, const uint32_t end_Co,
    const uint32_t start_Ci, const uint32_t end_Ci,
    const uint32_t start_Ho, const uint32_t end_Ho,
    const uint32_t start_Hf, const uint32_t end_Hf,
    const uint32_t start_Wo, const uint32_t end_Wo,
    const uint32_t start_Wf, const uint32_t end_Wf) const{

    uint32_t Hi = this->height;
    uint32_t Wi = this->width;

    for(auto p = start_Eo; p < end_Eo; p++) {
        for(auto j = start_Co; j < end_Co; j++) {
            for(auto i = start_Ci; i < end_Ci; i++) {
                for(auto l = start_Ho; l < end_Ho; l++) {
                    for(auto n = start_Hf; n < end_Hf; n++) {
                        for(auto k = start_Wo; k < end_Wo; k++) {
                            for(auto m = start_Wf; m < end_Wf; m++) {
                                int32_t Hi_idx = l*stride+n-padding;
                                int32_t Wi_idx = k*stride+m-padding;
                                bool isPaddingPosition = ((Hi_idx < 0) || (Hi_idx >= Hi)) || ((Wi_idx < 0) || (Wi_idx >= Wi));
                                auto inputTensorValue = (isPaddingPosition) ? T{} : (*this)._at(p, i, Hi_idx, Wi_idx);
                                output._at(p, j, l, k) += inputTensorValue * kernel._at(j, i, n, m);
                            }
                        }
                    }
                }
            }
        }
    }
}

// Convolution operation (Parallel) - Dimension: Output height
template <class T>
Tensor<T>& Tensor<T>::convolveParallelHo(const Tensor<T>& kernel, const uint32_t stride, const uint32_t padding, const uint32_t nThreads, float* executionTime) const {
    // Check for dimensions
    assert(this->nChannels == kernel.nChannels);
    // if(this->nChannels != kernel.nChannels) throw std::invalid_argument("Tensors have different dimensions");

    // Compute output dimensions
    uint32_t Ei = this->nElements;
    uint32_t Ci = this->nChannels;
    uint32_t Hi = this->height;
    uint32_t Wi = this->width;

    uint32_t Ef = kernel.nElements;
    uint32_t Cf = kernel.nChannels;
    uint32_t Hf = kernel.height;
    uint32_t Wf = kernel.width;

    uint32_t Eo = Ei;
    uint32_t Co = Ef;
    uint32_t Ho = (Hi - Hf + 2*padding) / stride + 1;
    uint32_t Wo = (Wi - Wf + 2*padding) / stride + 1;

    // Create the output
    Tensor<T>* output = new Tensor(Eo, Co, Ho, Wo, tensor::init::ZEROS);

    // Create pool of threads
    std::vector<std::thread> threads;

    // Compute range for each thread;
    uint32_t thread_range = (nThreads > Ho) ? 1 : round(float(Ho)/float(nThreads));

    Chronometer c;
    if constexpr (DO_TIME){
        c.start();
    }

    for(auto l = 0; l < Ho; l += thread_range) {
        if (threads.size() == nThreads-1) thread_range = Ho - l; // Manage situation in which nThreads is not a divider of H_o
        threads.emplace_back([&, l, thread_range]() {
            this->convolveThread(*output, kernel, stride, padding,
                                /*start_Eo=*/0, /*end_Eo=*/Eo,
                                /*start_Co=*/0, /*end_Co=*/Co,
                                /*start_Ci=*/0, /*end_Ci=*/Ci,
                                /*start_Ho=*/l, /*end_Ho=*/l + thread_range,
                                /*start_Hf=*/0, /*end_Hf=*/Hf,
                                /*start_Wo=*/0, /*end_Wo=*/Wo,
                                /*start_Wf=*/0, /*end_Wf=*/Wf);
        });
    }

    for(auto& thread : threads) {
        thread.join();
    }

    if constexpr (DO_TIME){
        c.stop();
        // std::cout << c.getTime() << std::endl;
        if(executionTime != nullptr) {
            *executionTime = c.getTime();
        }
    }

    return *output;
}


// Convolution operation (Parallel) - Dimension: Output nChannel
template <class T>
Tensor<T>& Tensor<T>::convolveParallelCo(const Tensor<T>& kernel, const uint32_t stride, const uint32_t padding, const uint32_t nThreads, float* executionTime) const {
    // Check for dimensions
    assert(this->nChannels == kernel.nChannels);
    // if(this->nChannels != kernel.nChannels) throw std::invalid_argument("Tensors have different dimensions");

    // Compute output dimensions
    uint32_t Ei = this->nElements;
    uint32_t Ci = this->nChannels;
    uint32_t Hi = this->height;
    uint32_t Wi = this->width;

    uint32_t Ef = kernel.nElements;
    uint32_t Cf = kernel.nChannels;
    uint32_t Hf = kernel.height;
    uint32_t Wf = kernel.width;

    uint32_t Eo = Ei;
    uint32_t Co = Ef;
    uint32_t Ho = (Hi - Hf + 2*padding) / stride + 1;
    uint32_t Wo = (Wi - Wf + 2*padding) / stride + 1;

    // Create the output
    Tensor<T>* output = new Tensor(Ho, Wo, Co, tensor::init::ZEROS);

    // Create pool of threads
    std::vector<std::thread> threads;

    // Compute range for each thread;
    uint32_t thread_range = (nThreads > Co) ? 1 : round(float(Co)/float(nThreads));

    Chronometer c;
    if constexpr (DO_TIME){
        c.start();
    }

    for(auto j = 0; j < Co; j += thread_range) {
        if (threads.size() == nThreads-1) thread_range = Co - j; // Manage situation in which nThreads is not a divider of Co
        threads.emplace_back([&, j, thread_range]() {
            this->convolveThread(*output, kernel, stride, padding,
                                /*start_Eo=*/0, /*end_Eo=*/Eo,
                                /*start_Co=*/j, /*end_Co=*/j + thread_range,
                                /*start_Ci=*/0, /*end_Ci=*/Ci,
                                /*start_Ho=*/0, /*end_Ho=*/Ho,
                                /*start_Hf=*/0, /*end_Hf=*/Hf,
                                /*start_Wo=*/0, /*end_Wo=*/Wo,
                                /*start_Wf=*/0, /*end_Wf=*/Wf);
        });
    }

    for(auto& thread : threads) {
        thread.join();
    }

    if constexpr (DO_TIME){
        c.stop();
        // std::cout << c.getTime() << std::endl;
        if(executionTime != nullptr) {
            *executionTime = c.getTime();
        }
    }


    return *output;
}

// Convolution operation (Parallel) - Dimension: Output nElements
template <class T>
Tensor<T>& Tensor<T>::convolveParallelEo(const Tensor<T>& kernel, const uint32_t stride, const uint32_t padding, const uint32_t nThreads, float* executionTime) const {
    // Check for dimensions
    assert(this->nChannels == kernel.nChannels);
    // if(this->nChannels != kernel.nChannels) throw std::invalid_argument("Tensors have different dimensions");

    // Compute output dimensions
    uint32_t Ei = this->nElements;
    uint32_t Ci = this->nChannels;
    uint32_t Hi = this->height;
    uint32_t Wi = this->width;

    uint32_t Ef = kernel.nElements;
    uint32_t Cf = kernel.nChannels;
    uint32_t Hf = kernel.height;
    uint32_t Wf = kernel.width;

    uint32_t Eo = Ei;
    uint32_t Co = Ef;
    uint32_t Ho = (Hi - Hf + 2*padding) / stride + 1;
    uint32_t Wo = (Wi - Wf + 2*padding) / stride + 1;

    // Create the output
    Tensor<T>* output = new Tensor(Ho, Wo, Co, tensor::init::ZEROS);

    // Create pool of threads
    std::vector<std::thread> threads;

    // Compute range for each thread;
    uint32_t thread_range = (nThreads > Eo) ? 1 : round(float(Eo)/float(nThreads));

    Chronometer c;
    if constexpr (DO_TIME){
        c.start();
    }

    for(auto p = 0; p < Eo; p += thread_range) {
        if (threads.size() == nThreads-1) thread_range = Eo - p; // Manage situation in which nThreads is not a divider of Eo
        threads.emplace_back([&, p, thread_range]() {
            this->convolveThread(*output, kernel, stride, padding,
                                /*start_Eo=*/p, /*end_Eo=*/p + thread_range,
                                /*start_Co=*/0, /*end_Co=*/Co,
                                /*start_Ci=*/0, /*end_Ci=*/Ci,
                                /*start_Ho=*/0, /*end_Ho=*/Ho,
                                /*start_Hf=*/0, /*end_Hf=*/Hf,
                                /*start_Wo=*/0, /*end_Wo=*/Wo,
                                /*start_Wf=*/0, /*end_Wf=*/Wf);
        });
    }


    for(auto& thread : threads) {
        thread.join();
    }

    if constexpr (DO_TIME){
        c.stop();
        // std::cout << c.getTime() << std::endl;
        if(executionTime != nullptr) {
            *executionTime = c.getTime();
        }
    }
    return *output;
}


// Convolution operation (Naive)
template<class T>
Tensor<T>& Tensor<T>::convolveNaive(const Kernel<T>* kernel, const uint32_t stride, const uint32_t padding, const uint32_t orderNumber, float* executionTime) const {
    // Check for dimensions
    assert(this->nChannels == kernel->nChannels);

    // Compute output dimensions
    uint32_t Eo = this->nElements;
    uint32_t Co = kernel->nElements;
    uint32_t Ho = (this->height - kernel->height + 2*padding) / stride + 1;
    uint32_t Wo = (this->width - kernel->width + 2*padding) / stride + 1;

    uint32_t Ci = this->nChannels;
    uint32_t Hi = this->height;
    uint32_t Wi = this->width;

    uint32_t Hf = kernel->height;
    uint32_t Wf = kernel->width;

    // Create the output
    Tensor<T>* output = new Tensor(Ho, Wo, Co, tensor::init::ZEROS);

    Chronometer c;
    if constexpr (DO_TIME){
        c.start();
    }

    switch (orderNumber) {
    case 1: // Convolution (Order N. 1)
    if constexpr (LLVM_NAIVE_1) __asm volatile (" #LLVM-MCA-BEGIN convolveNaive_1 ");
    for(auto i = 0; i < Ci; i++) {
        for(auto j = 0; j < Co; j++) {
            for(auto k = 0; k < Wo; k++) {
                for(auto l = 0; l < Ho; l++) {
                    for(auto m = 0; m < Wf; m++) {
                        for(auto n = 0; n < Hf; n++) {
                            auto Hi_idx = (l*stride) + n;
                            auto Wi_idx = (k*stride) + m;
                            // Compute indexes
                            auto inputIndex = (Hi_idx * this->width * this->nChannels) + (Wi_idx * this->nChannels) + i;
                            auto outputIndex = (l * output->width * output->nChannels) + (k * output->nChannels) + j;
                            auto kernelIndex = (n * kernel->width * kernel->nElements * kernel->nChannels) + (m * kernel->nElements * kernel->nChannels) + (i * kernel->nElements) + j;
                            // Accumualate on output elements
                            (*output)[outputIndex] += (*this)[inputIndex] * (*kernel)[kernelIndex];
                        }
                    }
                }
            }
            // std::cout << "----- j\n";   
        }
    }
    if constexpr (LLVM_NAIVE_1) __asm volatile (" #LLVM-MCA-END convolveNaive_1 ");
    break;

    case 2: // Convolution (Order N. 2)
    if constexpr (LLVM_NAIVE_2) __asm volatile (" #LLVM-MCA-BEGIN convolveNaive_2 ");
    for(auto l = 0; l < Ho; l++) {
        for(auto n = 0; n < Hf; n++) {
            for(auto m = 0; m < Wf; m++) {
                    for(auto k = 0; k < Wo; k++) {
                for(auto i = 0; i < Ci; i++) {
                        for(auto j = 0; j < Co; j++) {
                            auto Hi_idx = (l*stride) + n;
                            auto Wi_idx = (k*stride) + m;
                            // Compute indexes
                            auto inputIndex = (Hi_idx * this->width * this->nChannels) + (Wi_idx * this->nChannels) + i;
                            auto outputIndex = (l * output->width * output->nChannels) + (k * output->nChannels) + j;
                            auto kernelIndex = (n * kernel->width * kernel->nElements * kernel->nChannels) + (m * kernel->nElements * kernel->nChannels) + (i * kernel->nElements) + j;
                            // Accumualate on output elements
                            (*output)[outputIndex] += (*this)[inputIndex] * (*kernel)[kernelIndex];
                        }
                    }
                }
            }
        }
    }
    if constexpr (LLVM_NAIVE_2) __asm volatile (" #LLVM-MCA-END convolveNaive_2 ");
    break;


    case 3: // Convolution (Order N. 3)
    if constexpr (LLVM_NAIVE_3) __asm volatile (" #LLVM-MCA-BEGIN convolveNaive_3 ");
    for(auto l = 0; l < Ho; l++) {
        for(auto k = 0; k < Wo; k++) {
            for(auto j = 0; j < Co; j++) {
                for(auto n = 0; n < Hf; n++) {
                    for(auto m = 0; m < Wf; m++) {
                        for(auto i = 0; i < Ci; i++) {
                            auto Hi_idx = (l*stride) + n;
                            auto Wi_idx = (k*stride) + m;
                            // Compute indexes
                            auto inputIndex = (Hi_idx * this->width * this->nChannels) + (Wi_idx * this->nChannels) + i;
                            auto outputIndex = (l * output->width * output->nChannels) + (k * output->nChannels) + j;
                            auto kernelIndex = (n * kernel->width * kernel->nElements * kernel->nChannels) + (m * kernel->nElements * kernel->nChannels) + (i * kernel->nElements) + j;
                            // Accumualate on output elements
                            (*output)[outputIndex] += (*this)[inputIndex] * (*kernel)[kernelIndex];

                        }
                    }
                }
            }
        }
    }
    if constexpr (LLVM_NAIVE_3) __asm volatile (" #LLVM-MCA-END convolveNaive_3 ");
    break;

    case 4: // Convolution (Order N. 4)
    if constexpr (LLVM_NAIVE_4) __asm volatile (" #LLVM-MCA-BEGIN convolveNaive_4 ");
    for(auto k = 0; k < Wo; k++) {
        for(auto j = 0; j < Co; j++) {
            for(auto l = 0; l < Ho; l++) {
                for(auto n = 0; n < Hf; n++) {
                    for(auto m = 0; m < Wf; m++) {
                        for(auto i = 0; i < Ci; i++) {
                            auto Hi_idx = (l*stride) + n;
                            auto Wi_idx = (k*stride) + m;
                            // Compute indexes
                            auto inputIndex = (Hi_idx * this->width * this->nChannels) + (Wi_idx * this->nChannels) + i;
                            auto outputIndex = (l * output->width * output->nChannels) + (k * output->nChannels) + j;
                            auto kernelIndex = (n * kernel->width * kernel->nElements * kernel->nChannels) + (m * kernel->nElements * kernel->nChannels) + (i * kernel->nElements) + j;
                            // Accumualate on output elements
                            (*output)[outputIndex] += (*this)[inputIndex] * (*kernel)[kernelIndex];
                        }
                    }
                }
            }
        }
    }
    if constexpr (LLVM_NAIVE_4) __asm volatile (" #LLVM-MCA-END convolveNaive_4 ");
    break;

    case 5: // Convolution (Order N. 5)
    if constexpr (LLVM_NAIVE_5) __asm volatile (" #LLVM-MCA-BEGIN convolveNaive_5 ");
    for(auto k = 0; k < Wo; k++) {
        for(auto j = 0; j < Co; j++) {
            for(auto n = 0; n < Hf; n++) {
                for(auto m = 0; m < Wf; m++) {
                    for(auto i = 0; i < Ci; i++) {
                        for(auto l = 0; l < Ho; l++) {
                            auto Hi_idx = (l*stride) + n;
                            auto Wi_idx = (k*stride) + m;
                            // Compute indexes
                            auto inputIndex = (Hi_idx * this->width * this->nChannels) + (Wi_idx * this->nChannels) + i;
                            auto outputIndex = (l * output->width * output->nChannels) + (k * output->nChannels) + j;
                            auto kernelIndex = (n * kernel->width * kernel->nElements * kernel->nChannels) + (m * kernel->nElements * kernel->nChannels) + (i * kernel->nElements) + j;
                            // Accumualate on output elements
                            (*output)[outputIndex] += (*this)[inputIndex] * (*kernel)[kernelIndex];
                        }
                    }
                }
            }
        }
    }
    if constexpr (LLVM_NAIVE_5) __asm volatile (" #LLVM-MCA-END convolveNaive_5 ");
    break;

    case 6: // Convolution (Order N. 6)
    if constexpr (LLVM_NAIVE_6) __asm volatile (" #LLVM-MCA-BEGIN convolveNaive_6 ");
    for(auto n = 0; n < Hf; n++) {
        for(auto m = 0; m < Wf; m++) {
            for(auto i = 0; i < Ci; i++) {
                for(auto k = 0; k < Wo; k++) {
                    for(auto j = 0; j < Co; j++) {
                        for(auto l = 0; l < Ho; l++) {
                            auto Hi_idx = (l*stride) + n;
                            auto Wi_idx = (k*stride) + m;
                            // Compute indexes
                            auto inputIndex = (Hi_idx * this->width * this->nChannels) + (Wi_idx * this->nChannels) + i;
                            auto outputIndex = (l * output->width * output->nChannels) + (k * output->nChannels) + j;
                            auto kernelIndex = (n * kernel->width * kernel->nElements * kernel->nChannels) + (m * kernel->nElements * kernel->nChannels) + (i * kernel->nElements) + j;
                            // Accumualate on output elements
                            (*output)[outputIndex] += (*this)[inputIndex] * (*kernel)[kernelIndex];
                        }
                    }
                }
            }
        }
    }
    if constexpr (LLVM_NAIVE_6) __asm volatile (" #LLVM-MCA-END convolveNaive_6 ");
    break;

    case 7: // Convolution (Order N. 7)
    if constexpr (LLVM_NAIVE_7) __asm volatile (" #LLVM-MCA-BEGIN convolveNaive_7 ");
    for(auto n = 0; n < Hf; n++) {
        for(auto m = 0; m < Wf; m++) {
            for(auto i = 0; i < Ci; i++) {
                for(auto l = 0; l < Ho; l++) {
                    for(auto k = 0; k < Wo; k++) {
                        for(auto j = 0; j < Co; j++) {
                            auto Hi_idx = (l*stride) + n;
                            auto Wi_idx = (k*stride) + m;
                            // Compute indexes
                            auto inputIndex = (Hi_idx * this->width * this->nChannels) + (Wi_idx * this->nChannels) + i;
                            auto outputIndex = (l * output->width * output->nChannels) + (k * output->nChannels) + j;
                            auto kernelIndex = (n * kernel->width * kernel->nElements * kernel->nChannels) + (m * kernel->nElements * kernel->nChannels) + (i * kernel->nElements) + j;
                            // Accumualate on output elements
                            (*output)[outputIndex] += (*this)[inputIndex] * (*kernel)[kernelIndex];
                            
                        }
                    }
                }
            }
        }
    }
    if constexpr (LLVM_NAIVE_7) __asm volatile (" #LLVM-MCA-END convolveNaive_7 ");
    break;

    default:
        std::cerr << "Please insert a valid order for naive convolution\n";
        break;
    }


    if constexpr (DO_TIME){
        c.stop();
        // std::cout << c.getTime() << std::endl;
        if(executionTime != nullptr) {
            *executionTime = c.getTime();
        }
    }

    return *output;
}

// Convolution operation (Naive - KernelNKernels)
template<class T>
Tensor<T>& Tensor<T>::convolveNaiveKernelNKernels(const Kernel<T>* kernel, const uint32_t stride, const uint32_t padding, const uint32_t orderNumber, float* executionTime) const {
    // Check for dimensions
    assert(this->nChannels == kernel->nChannels);

    // Compute output dimensions
    uint32_t Eo = this->nElements;
    uint32_t Co = kernel->nElements;
    uint32_t Ho = (this->height - kernel->height + 2*padding) / stride + 1;
    uint32_t Wo = (this->width - kernel->width + 2*padding) / stride + 1;

    uint32_t Ci = this->nChannels;
    uint32_t Hi = this->height;
    uint32_t Wi = this->width;

    uint32_t Hf = kernel->height;
    uint32_t Wf = kernel->width;

    // Create the output
    Tensor<T>* output = new Tensor(Ho, Wo, Co, tensor::init::ZEROS);

    Chronometer c;
    if constexpr (DO_TIME){
        c.start();
    }

    switch (orderNumber) {
    case 1: // Convolution (Order N. 1)
    for(auto i = 0; i < Ci; i++) {
        for(auto j = 0; j < Co; j++) {
            for(auto k = 0; k < Wo; k++) {
                for(auto l = 0; l < Ho; l++) {
                    for(auto m = 0; m < Wf; m++) {
                        for(auto n = 0; n < Hf; n++) {
                            auto Hi_idx = (l*stride) + n;
                            auto Wi_idx = (k*stride) + m;
                            // Compute indexes
                            auto inputIndex = (Hi_idx * this->width * this->nChannels) + (Wi_idx * this->nChannels) + i;
                            auto outputIndex = (l * output->width * output->nChannels) + (k * output->nChannels) + j;
                            auto kernelIndex = (n * kernel->width * kernel->nElements * kernel->nChannels) + (m * kernel->nElements * kernel->nChannels) + (i * kernel->nElements) + j;
                            // Accumualate on output elements
                            (*output)[outputIndex] += (*this)[inputIndex] * (*kernel)[kernelIndex];
                        }
                    }
                }
            }
            // std::cout << "----- j\n";   
        }
    }
    break;

    case 2: // Convolution (Order N. 2)
    for(auto l = 0; l < Ho; l++) {
        for(auto n = 0; n < Hf; n++) {
            for(auto m = 0; m < Wf; m++) {
                for(auto i = 0; i < Ci; i++) {
                    for(auto k = 0; k < Wo; k++) {
                        for(auto j = 0; j < Co; j++) {
                            auto Hi_idx = (l*stride) + n;
                            auto Wi_idx = (k*stride) + m;
                            // Compute indexes
                            auto inputIndex = (Hi_idx * this->width * this->nChannels) + (Wi_idx * this->nChannels) + i;
                            auto outputIndex = (l * output->width * output->nChannels) + (k * output->nChannels) + j;
                            auto kernelIndex = (n * kernel->width * kernel->nElements * kernel->nChannels) + (m * kernel->nElements * kernel->nChannels) + (i * kernel->nElements) + j;
                            // Accumualate on output elements
                            (*output)[outputIndex] += (*this)[inputIndex] * (*kernel)[kernelIndex];
                        }
                    }
                }
            }
        }
    }
    break;

    case 3: // Convolution (Order N. 3)
    for(auto n = 0; n < Hf; n++) {
        for(auto m = 0; m < Wf; m++) {
            for(auto i = 0; i < Ci; i++) {
                for(auto l = 0; l < Ho; l++) {
                    for(auto k = 0; k < Wo; k++) {
                        for(auto j = 0; j < Co; j++) {
                            auto Hi_idx = (l*stride) + n;
                            auto Wi_idx = (k*stride) + m;
                            // Compute indexes
                            auto inputIndex = (Hi_idx * this->width * this->nChannels) + (Wi_idx * this->nChannels) + i;
                            auto outputIndex = (l * output->width * output->nChannels) + (k * output->nChannels) + j;
                            auto kernelIndex = (n * kernel->width * kernel->nElements * kernel->nChannels) + (m * kernel->nElements * kernel->nChannels) + (i * kernel->nElements) + j;
                            // Accumualate on output elements
                            (*output)[outputIndex] += (*this)[inputIndex] * (*kernel)[kernelIndex];
                            
                        }
                    }
                }
            }
        }
    }
    break;


    case 4: // Convolution (Order N. 4)
    for(auto l = 0; l < Ho; l++) {
        for(auto n = 0; n < Hf; n++) {
            for(auto m = 0; m < Wf; m++) {
                for(auto k = 0; k < Wo; k++) {
                    for(auto i = 0; i < Ci; i++) {
                        for(auto j = 0; j < Co; j++) {
                            auto Hi_idx = (l*stride) + n;
                            auto Wi_idx = (k*stride) + m;
                            // Compute indexes
                            auto inputIndex = (Hi_idx * this->width * this->nChannels) + (Wi_idx * this->nChannels) + i;
                            auto outputIndex = (l * output->width * output->nChannels) + (k * output->nChannels) + j;
                            auto kernelIndex = (n * kernel->width * kernel->nElements * kernel->nChannels) + (m * kernel->nElements * kernel->nChannels) + (i * kernel->nElements) + j;
                            // Accumualate on output elements
                            (*output)[outputIndex] += (*this)[inputIndex] * (*kernel)[kernelIndex];

                        }
                    }
                }
            }
        }
    }
    break;

    case 5: // Convolution (Order N. 5)
    for(auto l = 0; l < Ho; l++) {
        for(auto n = 0; n < Hf; n++) {
            for(auto m = 0; m < Wf; m++) {
                for(auto k = 0; k < Wo; k++) {
                    for(auto j = 0; j < Co; j++) {
                        for(auto i = 0; i < Ci; i++) {
                            auto Hi_idx = (l*stride) + n;
                            auto Wi_idx = (k*stride) + m;
                            // Compute indexes
                            auto inputIndex = (Hi_idx * this->width * this->nChannels) + (Wi_idx * this->nChannels) + i;
                            auto outputIndex = (l * output->width * output->nChannels) + (k * output->nChannels) + j;
                            auto kernelIndex = (n * kernel->width * kernel->nElements * kernel->nChannels) + (m * kernel->nElements * kernel->nChannels) + (i * kernel->nElements) + j;
                            // Accumualate on output elements
                            (*output)[outputIndex] += (*this)[inputIndex] * (*kernel)[kernelIndex];

                        }
                    }
                }
            }
        }
    }
    break;

    
    default:
        std::cerr << "Please insert a valid order for naive convolution\n";
        break;
    }


    if constexpr (DO_TIME){
        c.stop();
        // std::cout << c.getTime() << std::endl;
        if(executionTime != nullptr) {
            *executionTime = c.getTime();
        }
    }

    return *output;
}

// Convolution operation (Naive - KernelNChannelss)
template<class T>
Tensor<T>& Tensor<T>::convolveNaiveKernelNChannels(const Kernel<T>* kernel, const uint32_t stride, const uint32_t padding, const uint32_t orderNumber, float* executionTime) const {
    // Check for dimensions
    assert(this->nChannels == kernel->nChannels);

    // Compute output dimensions
    uint32_t Eo = this->nElements;
    uint32_t Co = kernel->nElements;
    uint32_t Ho = (this->height - kernel->height + 2*padding) / stride + 1;
    uint32_t Wo = (this->width - kernel->width + 2*padding) / stride + 1;

    uint32_t Ci = this->nChannels;
    uint32_t Hi = this->height;
    uint32_t Wi = this->width;

    uint32_t Hf = kernel->height;
    uint32_t Wf = kernel->width;

    // Create the output
    Tensor<T>* output = new Tensor(Ho, Wo, Co, tensor::init::ZEROS);

    Chronometer c;
    if constexpr (DO_TIME){
        c.start();
    }

    switch (orderNumber) {
    case 1: // Convolution (Order N. 1)
    for(auto i = 0; i < Ci; i++) {
        for(auto j = 0; j < Co; j++) {
            for(auto k = 0; k < Wo; k++) {
                for(auto l = 0; l < Ho; l++) {
                    for(auto m = 0; m < Wf; m++) {
                        for(auto n = 0; n < Hf; n++) {
                            auto Hi_idx = (l*stride) + n;
                            auto Wi_idx = (k*stride) + m;
                            // Compute indexes
                            auto inputIndex = (Hi_idx * this->width * this->nChannels) + (Wi_idx * this->nChannels) + i;
                            auto outputIndex = (l * output->width * output->nChannels) + (k * output->nChannels) + j;
                            auto kernelIndex = (n * kernel->width * kernel->nElements * kernel->nChannels) + (m * kernel->nElements * kernel->nChannels) + (j * kernel->nChannels) + i;
                            // Accumualate on output elements
                            (*output)[outputIndex] += (*this)[inputIndex] * (*kernel)[kernelIndex];
                        }
                    }
                }
            }
            // std::cout << "----- j\n";   
        }
    }
    break;

    case 2: // Convolution (Order N. 2)
    for(auto l = 0; l < Ho; l++) {
        for(auto n = 0; n < Hf; n++) {
            for(auto m = 0; m < Wf; m++) {
                for(auto i = 0; i < Ci; i++) {
                    for(auto k = 0; k < Wo; k++) {
                        for(auto j = 0; j < Co; j++) {
                            auto Hi_idx = (l*stride) + n;
                            auto Wi_idx = (k*stride) + m;
                            // Compute indexes
                            auto inputIndex = (Hi_idx * this->width * this->nChannels) + (Wi_idx * this->nChannels) + i;
                            auto outputIndex = (l * output->width * output->nChannels) + (k * output->nChannels) + j;
                            auto kernelIndex = (n * kernel->width * kernel->nElements * kernel->nChannels) + (m * kernel->nElements * kernel->nChannels) + (j * kernel->nChannels) + i;
                            // Accumualate on output elements
                            (*output)[outputIndex] += (*this)[inputIndex] * (*kernel)[kernelIndex];
                        }
                    }
                }
            }
        }
    }
    break;

    case 3: // Convolution (Order N. 3)
    for(auto n = 0; n < Hf; n++) {
        for(auto m = 0; m < Wf; m++) {
            for(auto i = 0; i < Ci; i++) {
                for(auto l = 0; l < Ho; l++) {
                    for(auto k = 0; k < Wo; k++) {
                        for(auto j = 0; j < Co; j++) {
                            auto Hi_idx = (l*stride) + n;
                            auto Wi_idx = (k*stride) + m;
                            // Compute indexes
                            auto inputIndex = (Hi_idx * this->width * this->nChannels) + (Wi_idx * this->nChannels) + i;
                            auto outputIndex = (l * output->width * output->nChannels) + (k * output->nChannels) + j;
                            auto kernelIndex = (n * kernel->width * kernel->nElements * kernel->nChannels) + (m * kernel->nElements * kernel->nChannels) + (j * kernel->nChannels) + i;
                            // Accumualate on output elements
                            (*output)[outputIndex] += (*this)[inputIndex] * (*kernel)[kernelIndex];
                            
                        }
                    }
                }
            }
        }
    }
    break;


    case 4: // Convolution (Order N. 4)
    for(auto l = 0; l < Ho; l++) {
        for(auto n = 0; n < Hf; n++) {
            for(auto m = 0; m < Wf; m++) {
                for(auto k = 0; k < Wo; k++) {
                    for(auto i = 0; i < Ci; i++) {
                        for(auto j = 0; j < Co; j++) {
                            auto Hi_idx = (l*stride) + n;
                            auto Wi_idx = (k*stride) + m;
                            // Compute indexes
                            auto inputIndex = (Hi_idx * this->width * this->nChannels) + (Wi_idx * this->nChannels) + i;
                            auto outputIndex = (l * output->width * output->nChannels) + (k * output->nChannels) + j;
                            auto kernelIndex = (n * kernel->width * kernel->nElements * kernel->nChannels) + (m * kernel->nElements * kernel->nChannels) + (j * kernel->nChannels) + i;
                            // Accumualate on output elements
                            (*output)[outputIndex] += (*this)[inputIndex] * (*kernel)[kernelIndex];

                        }
                    }
                }
            }
        }
    }
    break;

    case 5: // Convolution (Order N. 5)
    for(auto l = 0; l < Ho; l++) {
        for(auto n = 0; n < Hf; n++) {
            for(auto m = 0; m < Wf; m++) {
                for(auto k = 0; k < Wo; k++) {
                    for(auto j = 0; j < Co; j++) {
                        for(auto i = 0; i < Ci; i++) {
                            auto Hi_idx = (l*stride) + n;
                            auto Wi_idx = (k*stride) + m;
                            // Compute indexes
                            auto inputIndex = (Hi_idx * this->width * this->nChannels) + (Wi_idx * this->nChannels) + i;
                            auto outputIndex = (l * output->width * output->nChannels) + (k * output->nChannels) + j;
                            auto kernelIndex = (n * kernel->width * kernel->nElements * kernel->nChannels) + (m * kernel->nElements * kernel->nChannels) + (j * kernel->nChannels) + i;
                            // Accumualate on output elements
                            (*output)[outputIndex] += (*this)[inputIndex] * (*kernel)[kernelIndex];

                        }
                    }
                }
            }
        }
    }
    break;

    
    default:
        std::cerr << "Please insert a valid order for naive convolution\n";
        break;
    }


    if constexpr (DO_TIME){
        c.stop();
        // std::cout << c.getTime() << std::endl;
        if(executionTime != nullptr) {
            *executionTime = c.getTime();
        }
    }

    return *output;
}

// Convolution operation (Naive optimized)
template<class T>
Tensor<T>& Tensor<T>::convolveNaiveOptimised(const Kernel<T>* kernel, const uint32_t stride, const uint32_t padding, const uint32_t orderNumber, float* executionTime) const {
    // Check for dimensions
    assert(this->nChannels == kernel->nChannels);

    // Compute output dimensions
    uint32_t Eo = this->nElements;
    uint32_t Co = kernel->nElements;
    uint32_t Ho = (this->height - kernel->height + 2*padding) / stride + 1;
    uint32_t Wo = (this->width - kernel->width + 2*padding) / stride + 1;

    uint32_t Ci = this->nChannels;
    uint32_t Hi = this->height;
    uint32_t Wi = this->width;

    uint32_t Hf = kernel->height;
    uint32_t Wf = kernel->width;

    // Create the output
    Tensor<T>* output = new Tensor(Ho, Wo, Co, tensor::init::ZEROS);

    Chronometer c;
    if constexpr (DO_TIME){
        c.start();
    }

    switch (orderNumber) {
    case 1: // Convolution (Order N. 1)
    for(auto i = 0; i < Ci; i++) {
        const int32_t kernelIndex2 = (i * kernel->nElements);
        for(auto j = 0; j < Co; j++) {
            const int32_t outputIndex1 = j - (output->width * output->nChannels); 
            int32_t outputIndex0 = outputIndex1  - output->nChannels ;
            int32_t kernelIndex1 = kernelIndex2 + j;
            for(auto k = 0; k < Wo; k++) {
                outputIndex0 += output->nChannels;
                auto outputIndex = outputIndex0;
                for(auto l = 0; l < Ho; l++) {
                    outputIndex += (output->width * output->nChannels);
                    int32_t kernelIndex0 = kernelIndex1  - (kernel->nElements * kernel->nChannels);
                    for(auto m = 0; m < Wf; m++) {
                        const auto Wi_idx = (k*stride) + m;
                        const auto inputOffset1 =  (Wi_idx * this->nChannels) + i;
                        kernelIndex0 += (kernel->nElements * kernel->nChannels);
                        auto kernelIndex = kernelIndex0 - (kernel->width * kernel->nElements * kernel->nChannels);
                        for(auto n = 0; n < Hf; n++) {  
                            const auto Hi_idx = (l*stride) + n;
                            const auto inputOffset0 = (Hi_idx * this->width * this->nChannels);
                            const auto inputIndex = inputOffset1 + inputOffset0;  
                            kernelIndex += (kernel->width * kernel->nElements * kernel->nChannels); 
                            // Accumualate on output elements
                            (*output)[outputIndex] += (*this)[inputIndex] * (*kernel)[kernelIndex];
                        }
                    }
                }
            }
        }
    }
    break;

    case 2: // Convolution (Order N. 2)
    for(auto l = 0; l < Ho; l++) {
        const int32_t outputIndex1 = (l * output->width * output->nChannels) - output->nChannels;
        for(auto n = 0; n < Hf; n++) {
            const auto Hi_idx = (l*stride) + n;
            const auto inputOffset0 = (Hi_idx * this->width * this->nChannels);
            const int32_t kernelIndex2 = (n * kernel->width * kernel->nElements * kernel->nChannels) - (kernel->nElements * kernel->nChannels); // (kernel->nElements * kernel->nChannels) per m=0
            int32_t kernelIndex1 = kernelIndex2;
            for(auto m = 0; m < Wf; m++) {
               kernelIndex1 += (kernel->nElements * kernel->nChannels);
               int32_t kernelIndex0 = kernelIndex1 - kernel->nElements;
                for(auto i = 0; i < Ci; i++) {
                    auto inputIndex0 = inputOffset0 + i;
                    kernelIndex0 += kernel->nElements;
                    int32_t outputIndex0 = outputIndex1;
                    for(auto k = 0; k < Wo; k++) {
                        const auto Wi_idx = (k*stride) + m;
                        auto inputIndex = inputIndex0 + (Wi_idx * this->nChannels);
                        outputIndex0 += output->nChannels;
                        for(auto j = 0; j < Co; j++) {
                            auto outputIndex = outputIndex0 + j;
                            auto kernelIndex = kernelIndex0 + j;
                            // Accumualate on output elements
                            (*output)[outputIndex] += (*this)[inputIndex] * (*kernel)[kernelIndex];

                        }
                    }
                }
            }
        }
    }
    break;

    case 3: // Convolution (Order N. 3)
    for(auto l = 0; l < Ho; l++) {
        const int32_t outputIndex1 = (l * output->width * output->nChannels) - output->nChannels;
        int32_t outputIndex0 = outputIndex1; 
        for(auto k = 0; k < Wo; k++) {
            outputIndex0 += output->nChannels;
            for(auto j = 0; j < Co; j++) {
                int32_t outputIndex = outputIndex0 + j; 
                int32_t kernelIndex2 = j - (kernel->width * kernel->nElements * kernel->nChannels);
                int32_t kernelIndex1 = kernelIndex2;
                for(auto n = 0; n < Hf; n++) {
                    const auto Hi_idx = (l*stride) + n;
                    const auto inputOffset0 = (Hi_idx * this->width * this->nChannels);
                    kernelIndex1 += (kernel->width * kernel->nElements * kernel->nChannels);
                    int32_t kernelIndex0 = kernelIndex1 - (kernel->nElements * kernel->nChannels); 
                    for(auto m = 0; m < Wf; m++) {
                        const auto Wi_idx = (k*stride) + m;
                        const auto inputOffset = inputOffset0 + (Wi_idx * this->nChannels);
                        kernelIndex0 += (kernel->nElements * kernel->nChannels);
                        int32_t kernelIndex = kernelIndex0 - kernel->nElements;
                        for(auto i = 0; i < Ci; i++) {
                            // Compute indexes
                            const auto inputIndex = inputOffset + i;
                            kernelIndex += kernel->nElements;
                            // Accumualate on output elements
                            (*output)[outputIndex] += (*this)[inputIndex] * (*kernel)[kernelIndex];

                        }
                    }
                }
            }
        }
    }
    break;

    case 4: // Convolution (Order N. 4)
    for(auto k = 0; k < Wo; k++) {
        const int32_t outputIndex1 = (k * output->nChannels);
        for(auto j = 0; j < Co; j++) {
            const int32_t outputIndex0 = outputIndex1 + j;
            int32_t outputIndex = outputIndex0 - (output->width * output->nChannels);
            const int32_t kernelIndex2 = j - (kernel->width * kernel->nElements * kernel->nChannels);
            for(auto l = 0; l < Ho; l++) {
                outputIndex += (output->width * output->nChannels);
                int32_t kernelIndex1 = kernelIndex2;
                for(auto n = 0; n < Hf; n++) {
                    const auto Hi_idx = (l*stride) + n;
                    const auto inputOffset0 = (Hi_idx * this->width * this->nChannels);
                    kernelIndex1 += (kernel->width * kernel->nElements * kernel->nChannels);
                    int32_t kernelIndex0 = kernelIndex1 - (kernel->nElements * kernel->nChannels);
                    for(auto m = 0; m < Wf; m++) {
                        const auto Wi_idx = (k*stride) + m;
                        const auto inputOffset = inputOffset0 + (Wi_idx * this->nChannels);
                        kernelIndex0 += (kernel->nElements * kernel->nChannels);
                        int32_t kernelIndex = kernelIndex0 - kernel->nElements;
                        for(auto i = 0; i < Ci; i++) {
                            auto inputIndex = inputOffset + i;
                            kernelIndex += kernel->nElements;
                            // Accumualate on output elements
                            (*output)[outputIndex] += (*this)[inputIndex] * (*kernel)[kernelIndex];
                        }
                    }
                }
            }
        }
    }
    break;

    case 5: // Convolution (Order N. 5)
    for(auto k = 0; k < Wo; k++) {
        const int32_t outputIndex1 = (k * output->nChannels);
        for(auto j = 0; j < Co; j++) {
            const int32_t outputIndex0 = outputIndex1 + j;
            const int32_t kernelIndex2 = j - (kernel->width * kernel->nElements * kernel->nChannels);
            int32_t kernelIndex1 = kernelIndex2;
            for(auto n = 0; n < Hf; n++) {
                kernelIndex1 += (kernel->width * kernel->nElements * kernel->nChannels);
                int32_t kernelIndex0 = kernelIndex1 - (kernel->nElements * kernel->nChannels);
                for(auto m = 0; m < Wf; m++) {
                    const auto Wi_idx = (k*stride) + m;
                    const auto inputOffset0 = (Wi_idx * this->nChannels);
                    kernelIndex0 += (kernel->nElements * kernel->nChannels);
                    int32_t kernelIndex = kernelIndex0 - kernel->nElements;
                    for(auto i = 0; i < Ci; i++) {
                        int32_t outputIndex = outputIndex0 - (output->width * output->nChannels);
                        int32_t inputIndex0 = i;
                        kernelIndex += kernel->nElements;
                        for(auto l = 0; l < Ho; l++) {
                            outputIndex += (output->width * output->nChannels);
                            const auto Hi_idx = (l*stride) + n;
                            int32_t inputOffset = inputOffset0 + (Hi_idx * this->width * this->nChannels);
                            const int32_t inputIndex = inputIndex0 + inputOffset; 
                            // Accumualate on output elements
                            (*output)[outputIndex] += (*this)[inputIndex] * (*kernel)[kernelIndex];
                            
                        }
                    }
                }
            }
        }
    }
    break;

    case 6: // Convolution (Order N. 6)
    for(auto n = 0; n < Hf; n++) {
        const int32_t kernelIndex2 = (n * kernel->width * kernel->nElements * kernel->nChannels) - (kernel->nElements * kernel->nChannels);
        int32_t kernelIndex1 = kernelIndex2;
        for(auto m = 0; m < Wf; m++) {
            kernelIndex1 += (kernel->nElements * kernel->nChannels);
            int32_t kernelIndex0 = kernelIndex1 - kernel->nElements;
            for(auto i = 0; i < Ci; i++) {
                int32_t inputIndex0 = i;
                kernelIndex0 += kernel->nElements;
                for(auto k = 0; k < Wo; k++) {
                    const int32_t outputIndex1 = (k * output->nChannels);
                    const auto Wi_idx = (k*stride) + m;
                    const auto inputOffset0 = (Wi_idx * this->nChannels);
                    int32_t kernelIndex = kernelIndex0;
                    for(auto j = 0; j < Co; j++) {
                        const int32_t outputIndex0 = outputIndex1 + j; 
                        int32_t outputIndex = outputIndex0 - (output->width * output->nChannels);
                        kernelIndex = kernelIndex0 + j;
                        for(auto l = 0; l < Ho; l++) {
                            outputIndex += (output->width * output->nChannels);
                            const auto Hi_idx = (l*stride) + n;
                            int32_t inputOffset = inputOffset0 + (Hi_idx * this->width * this->nChannels);
                            const int32_t inputIndex = inputIndex0 + inputOffset;
                            // Compute indexes
                            // Accumualate on output elements
                            (*output)[outputIndex] += (*this)[inputIndex] * (*kernel)[kernelIndex];
                        }
                    }
                }
            }
        }
    }
    break;

    case 7: // Convolution (Order N. 7)
    for(auto n = 0; n < Hf; n++) {
        const int32_t kernelIndex2 = (n * kernel->width * kernel->nElements * kernel->nChannels) - (kernel->nElements * kernel->nChannels);
        int32_t kernelIndex1 = kernelIndex2;
        for(auto m = 0; m < Wf; m++) {
            kernelIndex1 += (kernel->nElements * kernel->nChannels);
            int32_t kernelIndex0 = kernelIndex1 - kernel->nElements;
            for(auto i = 0; i < Ci; i++) {
                kernelIndex0 += kernel->nElements;
                for(auto l = 0; l < Ho; l++) {
                const int32_t outputIndex1 = (l * output->width * output->nChannels) - output->nChannels;
                auto outputIndex0 = outputIndex1;
                const auto Hi_idx = (l*stride) + n;
                const auto inputOffset0 = (Hi_idx * this->width * this->nChannels);
                    for(auto k = 0; k < Wo; k++) {
                        outputIndex0 += output->nChannels;
                        const auto Wi_idx = (k*stride) + m;
                        const auto inputOffset = inputOffset0 + (Wi_idx * this->nChannels);
                        const auto inputIndex = inputOffset + i;
                        for(auto j = 0; j < Co; j++) {
                            const int32_t kernelIndex = kernelIndex0 + j;
                            const auto outputIndex = outputIndex0 + j; 
                            // Accumualate on output elements
                            (*output)[outputIndex] += (*this)[inputIndex] * (*kernel)[kernelIndex];
                        }
                    }
                }
            }
        }
    }
    break;
    
    default:
        std::cerr << "Please insert a valid order for naive convolution\n";
        break;
    }

    if constexpr (DO_TIME){
        c.stop();
        // std::cout << c.getTime() << std::endl;
        if(executionTime != nullptr) {
            *executionTime = c.getTime();
        }
    }

    return *output;
}

// Convolution operation (Memory-blocking)
template<class T>
Tensor<T>& Tensor<T>::convolveMemoryBlocking(const Kernel<T>* kernel, const uint32_t stride, const uint32_t padding,
const int32_t Cib_divider, const int32_t Cob_divider, const int32_t Wob_divider, const uint32_t orderNumber, float* executionTime) const {
    // Check for dimensions
    assert(this->nChannels == kernel->nChannels);

    // Compute output dimensions
    uint32_t Eo = this->nElements;
    uint32_t Co = kernel->nElements;
    uint32_t Ho = (this->height - kernel->height + 2*padding) / stride + 1;
    uint32_t Wo = (this->width - kernel->width + 2*padding) / stride + 1;

    uint32_t Ci = this->nChannels;
    uint32_t Hi = this->height;
    uint32_t Wi = this->width;

    uint32_t Hf = kernel->height;
    uint32_t Wf = kernel->width;

    // Compute blocking dimensions
    // Ci = 32 
    // Cib_ = 8 
    // uint32_t Cib = ((Cib_ > Ci) || (Cib_ <= 0)) ? Ci : Cib_;
    uint32_t Cib = (Cib_divider > Ci) ? 1 : int(Ci / Cib_divider);
    uint32_t n_Cib_blocks = ((Ci % Cib) == 0) ? (Ci / Cib) : ((Ci / Cib) + 1);
    uint32_t Cib_reduced = Cib;

    // uint32_t Cob = ((Cob_ > Co) || (Cob_ <= 0)) ? Co : Cob_;
    uint32_t Cob = (Cob_divider > Co) ? 1 : int(Co / Cob_divider);
    uint32_t n_Cob_blocks = ((Co % Cob) == 0) ? (Co / Cob) : ((Co / Cob) + 1);
    uint32_t Cob_reduced = Cob;

    // uint32_t Wob = ((Wob_ > Wo) || (Wob_ <= 0)) ? Wo : Wob_;
    uint32_t Wob = (Wob_divider > Wo) ? 1 :int(Wo / Wob_divider);
    uint32_t n_Wob_blocks = ((Wo % Wob) == 0) ? (Wo / Wob) : ((Wo / Wob) + 1);
    uint32_t Wob_reduced = Wob;

    // std::cout << "Cob: " << Cob << " | Cib: " << Cib << " | Wob: " << Wob << std::endl;
    // std::cout << "n_Cob_blocks: " << n_Cob_blocks << " | n_Cib_blocks: " << n_Cib_blocks << " | n_Wob_blocks: " << n_Wob_blocks << std::endl;
    // std::cout << "Wob_redcued: " << Wob_reduced << std::endl;
    // std::cout << Ho << ", " << Wo << ", " << Co <<  " | " << Wob_reduced << std::endl;
    // std::cout << "--------------------------\n";

    // Create the output
    Tensor<T>* output = new Tensor(Ho, Wo, Co, tensor::init::ZEROS);

    Chronometer c;
    if constexpr (DO_TIME){
        c.start();
    }

    switch (orderNumber) {

    case 1:
    for(auto j_ = 0; j_ < n_Cob_blocks; j_++) {
    if(((Co % Cob) != 0) && (j_ == (n_Cob_blocks-1))) { Cob_reduced = (Co % Cob); } // Handling the remaining block
    for(auto i_ = 0; i_ < n_Cib_blocks; i_++) {
    if(((Ci % Cib) != 0) && (i_ == (n_Cib_blocks-1))) { Cib_reduced = (Ci % Cib); } else { Cib_reduced = Cib; } // Handling the remaining block
        for(auto ii = 0; ii < Cib_reduced; ii++) {
            for(auto jj = 0; jj < Cob_reduced; jj++) {
                for(auto k_ = 0; k_ < n_Wob_blocks; k_++) {
                if(((Wo % Wob) != 0) && (k_ == (n_Wob_blocks-1))) { Wob_reduced = (Wo % Wob); } else { Wob_reduced = Wob; } // Handling the remaining block
                    for(auto kk = 0; kk < Wob_reduced; kk++) {
                        for(auto l = 0; l < Ho; l++) {
                            for(auto m = 0; m < Wf; m++) {
                                for(auto n = 0; n < Hf; n++) {
                                    // Input index
                                    const auto  Hi_idx = (l*stride) + n;
                                    const auto  Wi_idx = (k_*stride) + kk + m;
                                    const auto  Ci_idx = ii;
                                    const auto  inputIndex = (i_*Hi*Wi*Cib) + ((Hi_idx * this->width * Cib_reduced) + (Wi_idx * Cib_reduced) + Ci_idx);
                                    // Output index
                                    const auto  Ho_idx = l;
                                    const auto  Wo_idx = (k_ * Wob) + kk;
                                    const auto  Co_idx = jj;
                                    const auto  outputIndex = (j_*Ho*Wo*Cob) + ((Ho_idx * Wo * Cob_reduced) + (Wo_idx * Cob_reduced) + Co_idx);
                                    // if(j_ == 0) std::cout << outputIndex << ", " << Wo_idx << std::endl;
                                    // if(k_ == 1) std::cout << kk <<std::endl;
                                    // if(j_== 0 && Ho_idx == 1 && Wo_idx==1 && Co_idx==0) std::cout << "eccolo: " << outputIndex << std::endl;
                                    // Kernel index
                                    const auto  Hf_idx = n;
                                    const auto  Wf_idx = m;
                                    const auto  Ef_idx = jj;
                                    const auto  Cf_idx = ii;
                                    const auto  Ef_offset = j_ * Hf * Wf * Cob * Ci;
                                    const auto  Cf_offset = i_ * Hf * Wf * Cob * Cib;
                                    const auto  kernelIndex = Cf_offset + Ef_offset + (Hf_idx * Wf * Cob_reduced) + (Wf_idx * Cob_reduced) + (Cf_idx * Hf * Wf * Cob_reduced) +  Ef_idx;

                                    // Accumualate on output elements
                                    (*output)[outputIndex] += (*this)[inputIndex] * (*kernel)[kernelIndex];
                                    // std::cout << outputIndex << std::endl;
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    }
    break;

    case 2: // Convolution (Order N. 2)
    for(auto j_ = 0; j_ < n_Cob_blocks; j_++) {
    if(((Co % Cob) != 0) && (j_ == (n_Cob_blocks-1))) { Cob_reduced = (Co % Cob); } // Handling the remaining block
    for(auto i_ = 0; i_ < n_Cib_blocks; i_++) {
    if(((Ci % Cib) != 0) && (i_ == (n_Cib_blocks-1))) { Cib_reduced = (Ci % Cib); } else { Cib_reduced = Cib; } // Handling the remaining block
        for(auto l = 0; l < Ho; l++) {
            for(auto n = 0; n < Hf; n++) {
                for(auto m = 0; m < Wf; m++) {
                    for(auto ii = 0; ii < Cib_reduced; ii++) {                  /* lo scambio       */
                        for(auto k_ = 0; k_ < n_Wob_blocks; k_++) {
                        if(((Wo % Wob) != 0) && (k_ == (n_Wob_blocks-1))) { Wob_reduced = (Wo % Wob); } else { Wob_reduced = Wob; } // Handling the remaining block
                            for(auto kk = 0; kk < Wob_reduced; kk++) {              /* Qui c'è stato    */
                                for(auto jj = 0; jj < Cob_reduced; jj++) {
                                    // Input index
                                    const auto Hi_idx = (l*stride) + n;
                                    const auto Wi_idx = (k_*stride) + kk + m;
                                    const auto Ci_idx = ii;
                                    const auto inputIndex = (i_*Hi*Wi*Cib) + ((Hi_idx * this->width * Cib_reduced) + (Wi_idx * Cib_reduced) + Ci_idx);
                                    // Output index
                                    const auto Ho_idx = l;
                                    const auto Wo_idx = (k_ * Wob) + kk;
                                    const auto Co_idx = jj;
                                    const auto outputIndex = (j_*Ho*Wo*Cob) + ((Ho_idx * Wo * Cob_reduced) + (Wo_idx * Cob_reduced) + Co_idx);
                                    // if(j_ == 0) std::cout << outputIndex << ", " << Wo_idx << std::endl;
                                    // if(k_ == 1) std::cout << kk <<std::endl;
                                    // if(j_== 0 && Ho_idx == 1 && Wo_idx==1 && Co_idx==0) std::cout << "eccolo: " << outputIndex << std::endl;
                                    // Kernel index
                                    const auto Hf_idx = n;
                                    const auto Wf_idx = m;
                                    const auto Ef_idx = jj;
                                    const auto Cf_idx = ii;
                                    const auto Ef_offset = j_ * Hf * Wf * Cob * Ci;
                                    const auto Cf_offset = i_ * Hf * Wf * Cob * Cib;
                                    const auto kernelIndex = Cf_offset + Ef_offset + (Hf_idx * Wf * Cob_reduced) + (Wf_idx * Cob_reduced) + (Cf_idx * Hf * Wf * Cob_reduced) +  Ef_idx;

                                    // Accumualate on output elements
                                    (*output)[outputIndex] += (*this)[inputIndex] * (*kernel)[kernelIndex];
                                    // std::cout << kernelIndex << " | jj/Cob_reduced: " << jj << "/" << Cob_reduced << std::endl;
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    }
    break;

    case 3: // Convolution (Order N. 3)
    for(auto j_ = 0; j_ < n_Cob_blocks; j_++) {
    if(((Co % Cob) != 0) && (j_ == (n_Cob_blocks-1))) { Cob_reduced = (Co % Cob); } // Handling the remaining block
    for(auto i_ = 0; i_ < n_Cib_blocks; i_++) {
    if(((Ci % Cib) != 0) && (i_ == (n_Cib_blocks-1))) { Cib_reduced = (Ci % Cib); } else { Cib_reduced = Cib; } // Handling the remaining block
        for(auto n = 0; n < Hf; n++) {
            for(auto m = 0; m < Wf; m++) {
                for(auto ii = 0; ii < Cib_reduced; ii++) {
                    for(auto l = 0; l < Ho; l++) {
                        for(auto k_ = 0; k_ < n_Wob_blocks; k_++) {
                        if(((Wo % Wob) != 0) && (k_ == (n_Wob_blocks-1))) { Wob_reduced = (Wo % Wob); } else { Wob_reduced = Wob; } // Handling the remaining block
                            for(auto kk = 0; kk < Wob_reduced; kk++) {
                                for(auto jj = 0; jj < Cob_reduced; jj++) {
                                     // Input index
                                    const auto Hi_idx = (l*stride) + n;
                                    const auto  Wi_idx = (k_*stride) + kk + m;
                                    const auto  Ci_idx = ii;
                                    const auto  inputIndex = (i_*Hi*Wi*Cib) + ((Hi_idx * this->width * Cib_reduced) + (Wi_idx * Cib_reduced) + Ci_idx);
                                    // Output index
                                    const auto  Ho_idx = l;
                                    const auto  Wo_idx = (k_ * Wob) + kk;
                                    const auto  Co_idx = jj;
                                    const auto  outputIndex = (j_*Ho*Wo*Cob) + ((Ho_idx * Wo * Cob_reduced) + (Wo_idx * Cob_reduced) + Co_idx);
                                    // Kernel index
                                    const auto  Hf_idx = n;
                                    const auto  Wf_idx = m;
                                    const auto  Ef_idx = jj;
                                    const auto  Cf_idx = ii;
                                    const auto  Ef_offset = j_ * Hf * Wf * Cob * Ci;
                                    const auto  Cf_offset = i_ * Hf * Wf * Cob * Cib;
                                    const auto  kernelIndex = Cf_offset + Ef_offset + (Hf_idx * Wf * Cob_reduced) + (Wf_idx * Cob_reduced) + (Cf_idx * Hf * Wf * Cob_reduced) +  Ef_idx;

                                    // Accumualate on output elements
                                    (*output)[outputIndex] += (*this)[inputIndex] * (*kernel)[kernelIndex];
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    }
    break;

    case 4: // Convolution (Order N. 4)
    for(auto j_ = 0; j_ < n_Cob_blocks; j_++) {
    if(((Co % Cob) != 0) && (j_ == (n_Cob_blocks-1))) { Cob_reduced = (Co % Cob); } // Handling the remaining block
    for(auto i_ = 0; i_ < n_Cib_blocks; i_++) {
    if(((Ci % Cib) != 0) && (i_ == (n_Cib_blocks-1))) { Cib_reduced = (Ci % Cib); } else { Cib_reduced = Cib; } // Handling the remaining block
        for(auto l = 0; l < Ho; l++) {
            for(auto n = 0; n < Hf; n++) {
                for(auto m = 0; m < Wf; m++) {
                    for(auto k_ = 0; k_ < n_Wob_blocks; k_++) {
                    if(((Wo % Wob) != 0) && (k_ == (n_Wob_blocks-1))) { Wob_reduced = (Wo % Wob); } else { Wob_reduced = Wob; } // Handling the remaining block
                        for(auto kk = 0; kk < Wob_reduced; kk++) {
                            for(auto ii = 0; ii < Cib_reduced; ii++) {
                                for(auto jj = 0; jj < Cob_reduced; jj++) {
                                    // Input index
                                    const auto Hi_idx = (l*stride) + n;
                                    const auto Wi_idx = (k_*stride) + kk + m;
                                    const auto Ci_idx = ii;
                                    const auto inputIndex = (i_*Hi*Wi*Cib) + ((Hi_idx * this->width * Cib_reduced) + (Wi_idx * Cib_reduced) + Ci_idx);
                                    // Output index
                                    const auto Ho_idx = l;
                                    const auto Wo_idx = (k_ * Wob) + kk;
                                    const auto Co_idx = jj;
                                    const auto outputIndex = (j_*Ho*Wo*Cob) + ((Ho_idx * Wo * Cob_reduced) + (Wo_idx * Cob_reduced) + Co_idx);// if(j_== 0 && Ho_idx == 1 && Wo_idx==1 && Co_idx==0) std::cout << "eccolo: " << outputIndex << std::endl;
                                    // Kernel index
                                    const auto Hf_idx = n;
                                    const auto Wf_idx = m;
                                    const auto Ef_idx = jj;
                                    const auto Cf_idx = ii;
                                    const auto Ef_offset = j_ * Hf * Wf * Cob * Ci;
                                    const auto Cf_offset = i_ * Hf * Wf * Cob * Cib;
                                    const auto kernelIndex = Cf_offset + Ef_offset + (Hf_idx * Wf * Cob_reduced) + (Wf_idx * Cob_reduced) + (Cf_idx * Hf * Wf * Cob_reduced) +  Ef_idx;

                                    // Accumualate on output elements
                                    (*output)[outputIndex] += (*this)[inputIndex] * (*kernel)[kernelIndex];
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    }
    break;

    case 5: // Convolution (Order N. 5)
    for(auto j_ = 0; j_ < n_Cob_blocks; j_++) {
    if(((Co % Cob) != 0) && (j_ == (n_Cob_blocks-1))) { Cob_reduced = (Co % Cob); } // Handling the remaining block
    for(auto i_ = 0; i_ < n_Cib_blocks; i_++) {
    if(((Ci % Cib) != 0) && (i_ == (n_Cib_blocks-1))) { Cib_reduced = (Ci % Cib); } else { Cib_reduced = Cib; } // Handling the remaining block
        for(auto l = 0; l < Ho; l++) {
            for(auto n = 0; n < Hf; n++) {
                for(auto m = 0; m < Wf; m++) {
                    for(auto k_ = 0; k_ < n_Wob_blocks; k_++) {
                    if(((Wo % Wob) != 0) && (k_ == (n_Wob_blocks-1))) { Wob_reduced = (Wo % Wob); } else { Wob_reduced = Wob; } // Handling the remaining block
                        for(auto kk = 0; kk < Wob_reduced; kk++) {
                            for(auto jj = 0; jj < Cob_reduced; jj++) {
                                for(auto ii = 0; ii < Cib_reduced; ii++) {
                                     // Input index
                                    const auto  Hi_idx = (l*stride) + n;
                                    const auto  Wi_idx = (k_*stride) + kk + m;
                                    const auto  Ci_idx = ii;
                                    const auto  inputIndex = (i_*Hi*Wi*Cib) + ((Hi_idx * this->width * Cib_reduced) + (Wi_idx * Cib_reduced) + Ci_idx);
                                    // Output index
                                    const auto  Ho_idx = l;
                                    const auto  Wo_idx = (k_ * Wob) + kk;
                                    const auto  Co_idx = jj;
                                    const auto  outputIndex = (j_*Ho*Wo*Cob) + ((Ho_idx * Wo * Cob_reduced) + (Wo_idx * Cob_reduced) + Co_idx);
                                    // Kernel index
                                    const auto  Hf_idx = n;
                                    const auto  Wf_idx = m;
                                    const auto  Ef_idx = jj;
                                    const auto  Cf_idx = ii;
                                    const auto  Ef_offset = j_ * Hf * Wf * Cob * Ci;
                                    const auto  Cf_offset = i_ * Hf * Wf * Cob * Cib;
                                    const auto  kernelIndex = Cf_offset + Ef_offset + (Hf_idx * Wf * Cob_reduced) + (Wf_idx * Cob_reduced) + (Cf_idx * Hf * Wf * Cob_reduced) +  Ef_idx;

                                    // Accumualate on output elements
                                    (*output)[outputIndex] += (*this)[inputIndex] * (*kernel)[kernelIndex];
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    }
    break;

    default:
        std::cerr << "Please insert a valid order for memory blocking convolution";
        std::cerr << "Order number: " << orderNumber << " is not valid\n";
        break;
    }


    if constexpr (DO_TIME){
        c.stop();
        // std::cout << c.getTime() << std::endl;
        if(executionTime != nullptr) {
            *executionTime = c.getTime();
        }
    }

    return *output;
}

// Convolution operation (Memory-blocking Soft)
template<class T>
Tensor<T>& Tensor<T>::convolveMemoryBlockingSoft(const Kernel<T>* kernel, const uint32_t stride, const uint32_t padding,
const int32_t Cib_divider, const int32_t Cob_divider, const int32_t Wob_divider, const uint32_t orderNumber, float* executionTime) const {
    // Check for dimensions
    assert(this->nChannels == kernel->nChannels);

    // Compute output dimensions
    uint32_t Eo = this->nElements;
    uint32_t Co = kernel->nElements;
    uint32_t Ho = (this->height - kernel->height + 2*padding) / stride + 1;
    uint32_t Wo = (this->width - kernel->width + 2*padding) / stride + 1;

    uint32_t Ci = this->nChannels;
    uint32_t Hi = this->height;
    uint32_t Wi = this->width;

    uint32_t Hf = kernel->height;
    uint32_t Wf = kernel->width;

    // Compute blocking dimensions
    // Ci = 32 
    // Cib_ = 8 
    // uint32_t Cib = ((Cib_ > Ci) || (Cib_ <= 0)) ? Ci : Cib_;
    uint32_t Cib = (Cib_divider > Ci) ? 1 : int(Ci / Cib_divider);
    uint32_t n_Cib_blocks = ((Ci % Cib) == 0) ? (Ci / Cib) : ((Ci / Cib) + 1);
    uint32_t Cib_reduced = Cib; 


    // uint32_t Cob = ((Cob_ > Co) || (Cob_ <= 0)) ? Co : Cob_;
    uint32_t Cob = (Cob_divider > Co) ? 1 : int(Co / Cob_divider);
    uint32_t n_Cob_blocks = ((Co % Cob) == 0) ? (Co / Cob) : ((Co / Cob) + 1);
    uint32_t Cob_reduced = Cob;

    // uint32_t Wob = ((Wob_ > Wo) || (Wob_ <= 0)) ? Wo : Wob_;
    uint32_t Wob = (Wob_divider > Wo) ? 1 : int(Wo / Wob_divider);
    uint32_t n_Wob_blocks = ((Wo % Wob) == 0) ? (Wo / Wob) : ((Wo / Wob) + 1);
    uint32_t Wob_reduced = Wob;

    // std::cout << "Cob: " << Cob << " | Cib: " << Cib << " | Wob: " << Wob << std::endl;
    // std::cout << "n_Cob_blocks: " << n_Cob_blocks << " | n_Cib_blocks: " << n_Cib_blocks << " | n_Wob_blocks: " << n_Wob_blocks << std::endl;
    // std::cout << "Wob_redcued: " << Wob_reduced << std::endl;
    // std::cout << Ho << ", " << Wo << ", " << Co <<  " | " << Wob_reduced << std::endl;
    // std::cout << "--------------------------\n";

    // Create the output
    Tensor<T>* output = new Tensor(Ho, Wo, Co, tensor::init::ZEROS);

    Chronometer c;
    if constexpr (DO_TIME){
        c.start();
    }

    switch (orderNumber) {

    case 1:
    for(auto j_ = 0; j_ < n_Cob_blocks; j_++){
    if(((Co % Cob) != 0) && (j_ == (n_Cob_blocks-1))) { Cob_reduced = (Co % Cob); } // Handling the remaining block
    for(auto i_ = 0; i_ < n_Cib_blocks; i_++){
    if(((Ci % Cib) != 0) && (i_ == (n_Cib_blocks-1))) { Cib_reduced = (Ci % Cib);} else { Cib_reduced = Cib; } // Handling the remaining block
        for(auto i = i_*Cib; i < (i_*Cib + Cib_reduced); i++) {
            for(auto j = j_*Cob; j < (j_*Cob + Cob_reduced); j++) {
                for(auto k_ = 0; k_ < n_Wob_blocks; k_++) {
                if(((Wo % Wob) != 0) && (k_ == (n_Wob_blocks-1))) { Wob_reduced = (Wo % Wob); } else { Wob_reduced = Wob; } // Handling the remaining block
                    for(auto k = k_; k < (k_*Wob + Wob_reduced); k++) {
                        for(auto l = 0; l < Ho; l++) {
                            for(auto m = 0; m < Wf; m++) {
                                for(auto n = 0; n < Hf; n++) {
                                    auto Hi_idx = (l*stride) + n;
                                    auto Wi_idx = (k*stride) + m;
                                    // Compute indexes
                                    auto inputIndex = (Hi_idx * this->width * this->nChannels) + (Wi_idx * this->nChannels) + i;
                                    auto outputIndex = (l * output->width * output->nChannels) + (k * output->nChannels) + j;
                                    auto kernelIndex = (n * kernel->width * kernel->nElements * kernel->nChannels) + (m * kernel->nElements * kernel->nChannels) + (i * kernel->nElements) + j;
                                    // Accumualate on output elements
                                    (*output)[outputIndex] += (*this)[inputIndex] * (*kernel)[kernelIndex];
                                    // std::cout << "i: " << i << " | i_*Cib: " << i_*Cib << " | Cib: " << Cib << std::endl;
                                    // std::cout << "j: " << j << " | j_*Cob: " << j_*Cob << std::endl;
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    }
    break;

    case 2:
    for(auto j_ = 0; j_ < n_Cob_blocks; j_++){
    if(((Co % Cob) != 0) && (j_ == (n_Cob_blocks-1))) { Cob_reduced = (Co % Cob); } // Handling the remaining block
    for(auto i_ = 0; i_ < n_Cib_blocks; i_++){
    if(((Ci % Cib) != 0) && (i_ == (n_Cib_blocks-1))) { Cib_reduced = (Ci % Cib);} else { Cib_reduced = Cib; } // Handling the remaining block
        for(auto l = 0; l < Ho; l++) {
            for(auto n = 0; n < Hf; n++) {
                for(auto m = 0; m < Wf; m++) {
                    for(auto i = i_*Cib; i < (i_*Cib + Cib_reduced); i++) {
                        for(auto k_ = 0; k_ < n_Wob_blocks; k_++) {
                        if(((Wo % Wob) != 0) && (k_ == (n_Wob_blocks-1))) { Wob_reduced = (Wo % Wob); } else { Wob_reduced = Wob; } // Handling the remaining block
                            for(auto k = k_; k < (k_*Wob + Wob_reduced); k++) {
                                for(auto j = j_*Cob; j < (j_*Cob + Cob_reduced); j++) {
                                    auto Hi_idx = (l*stride) + n;
                                    auto Wi_idx = (k*stride) + m;
                                    // Compute indexes
                                    auto inputIndex = (Hi_idx * this->width * this->nChannels) + (Wi_idx * this->nChannels) + i;
                                    auto outputIndex = (l * output->width * output->nChannels) + (k * output->nChannels) + j;
                                    auto kernelIndex = (n * kernel->width * kernel->nElements * kernel->nChannels) + (m * kernel->nElements * kernel->nChannels) + (i * kernel->nElements) + j;
                                    // Accumualate on output elements
                                    (*output)[outputIndex] += (*this)[inputIndex] * (*kernel)[kernelIndex];
                                    // std::cout << "i: " << i << " | i_*Cib: " << i_*Cib << " | Cib: " << Cib << std::endl;
                                    // std::cout << "j: " << j << " | j_*Cob: " << j_*Cob << std::endl;
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    }
    break;

    case 3: // Convolution (Order N. 3)
    for(auto j_ = 0; j_ < n_Cob_blocks; j_++){
    if(((Co % Cob) != 0) && (j_ == (n_Cob_blocks-1))) { Cob_reduced = (Co % Cob); } // Handling the remaining block
    for(auto i_ = 0; i_ < n_Cib_blocks; i_++){
    if(((Ci % Cib) != 0) && (i_ == (n_Cib_blocks-1))) { Cib_reduced = (Ci % Cib);} else { Cib_reduced = Cib; } // Handling the remaining block
        for(auto n = 0; n < Hf; n++) {
            for(auto m = 0; m < Wf; m++) {
                for(auto i = i_*Cib; i < (i_*Cib + Cib_reduced); i++) {
                    for(auto l = 0; l < Ho; l++) {
                        for(auto k_ = 0; k_ < n_Wob_blocks; k_++) {
                        if(((Wo % Wob) != 0) && (k_ == (n_Wob_blocks-1))) { Wob_reduced = (Wo % Wob); } else { Wob_reduced = Wob; } // Handling the remaining block
                            for(auto k = k_; k < (k_*Wob + Wob_reduced); k++) {
                                for(auto j = j_*Cob; j < (j_*Cob + Cob_reduced); j++) {
                                    auto Hi_idx = (l*stride) + n;
                                    auto Wi_idx = (k*stride) + m;
                                    // Compute indexes
                                    auto inputIndex = (Hi_idx * this->width * this->nChannels) + (Wi_idx * this->nChannels) + i;
                                    auto outputIndex = (l * output->width * output->nChannels) + (k * output->nChannels) + j;
                                    auto kernelIndex = (n * kernel->width * kernel->nElements * kernel->nChannels) + (m * kernel->nElements * kernel->nChannels) + (i * kernel->nElements) + j;
                                    // Accumualate on output elements
                                    (*output)[outputIndex] += (*this)[inputIndex] * (*kernel)[kernelIndex];
                                    // std::cout << "i: " << i << " | i_*Cib: " << i_*Cib << " | Cib: " << Cib << std::endl;
                                    // std::cout << "j: " << j << " | j_*Cob: " << j_*Cob << std::endl;
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    }
    break;

    case 4: // Convolution (Order N. 4)
    for(auto j_ = 0; j_ < n_Cob_blocks; j_++){
    if(((Co % Cob) != 0) && (j_ == (n_Cob_blocks-1))) { Cob_reduced = (Co % Cob); } // Handling the remaining block
    for(auto i_ = 0; i_ < n_Cib_blocks; i_++){
    if(((Ci % Cib) != 0) && (i_ == (n_Cib_blocks-1))) { Cib_reduced = (Ci % Cib);} else { Cib_reduced = Cib; } // Handling the remaining block
        for(auto l = 0; l < Ho; l++) {
            for(auto n = 0; n < Hf; n++) {
                for(auto m = 0; m < Wf; m++) {
                    for(auto k_ = 0; k_ < n_Wob_blocks; k_++) {
                    if(((Wo % Wob) != 0) && (k_ == (n_Wob_blocks-1))) { Wob_reduced = (Wo % Wob); } else { Wob_reduced = Wob; } // Handling the remaining block
                        for(auto k = k_; k < (k_*Wob + Wob_reduced); k++) {
                            for(auto i = i_*Cib; i < (i_*Cib + Cib_reduced); i++) {
                                for(auto j = j_*Cob; j < (j_*Cob + Cob_reduced); j++) {
                                    auto Hi_idx = (l*stride) + n;
                                    auto Wi_idx = (k*stride) + m;
                                    // Compute indexes
                                    auto inputIndex = (Hi_idx * this->width * this->nChannels) + (Wi_idx * this->nChannels) + i;
                                    auto outputIndex = (l * output->width * output->nChannels) + (k * output->nChannels) + j;
                                    auto kernelIndex = (n * kernel->width * kernel->nElements * kernel->nChannels) + (m * kernel->nElements * kernel->nChannels) + (i * kernel->nElements) + j;
                                    // Accumualate on output elements
                                    (*output)[outputIndex] += (*this)[inputIndex] * (*kernel)[kernelIndex];
                                    // std::cout << "i: " << i << " | i_*Cib: " << i_*Cib << " | Cib: " << Cib << std::endl;
                                    // std::cout << "j: " << j << " | j_*Cob: " << j_*Cob << std::endl;
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    }
    break;

    case 5: // Convolution (Order N. 5)
    for(auto j_ = 0; j_ < n_Cob_blocks; j_++){
    if(((Co % Cob) != 0) && (j_ == (n_Cob_blocks-1))) { Cob_reduced = (Co % Cob); } // Handling the remaining block
    for(auto i_ = 0; i_ < n_Cib_blocks; i_++){
    if(((Ci % Cib) != 0) && (i_ == (n_Cib_blocks-1))) { Cib_reduced = (Ci % Cib);} else { Cib_reduced = Cib; } // Handling the remaining block
        for(auto l = 0; l < Ho; l++) {
            for(auto n = 0; n < Hf; n++) {
                for(auto m = 0; m < Wf; m++) {
                    for(auto k_ = 0; k_ < n_Wob_blocks; k_++) {
                    if(((Wo % Wob) != 0) && (k_ == (n_Wob_blocks-1))) { Wob_reduced = (Wo % Wob); } else { Wob_reduced = Wob; } // Handling the remaining block
                        for(auto k = k_; k < (k_*Wob + Wob_reduced); k++) {
                            for(auto j = j_*Cob; j < (j_*Cob + Cob_reduced); j++) {
                                for(auto i = i_*Cib; i < (i_*Cib + Cib_reduced); i++) {
                                    auto Hi_idx = (l*stride) + n;
                                    auto Wi_idx = (k*stride) + m;
                                    // Compute indexes
                                    auto inputIndex = (Hi_idx * this->width * this->nChannels) + (Wi_idx * this->nChannels) + i;
                                    auto outputIndex = (l * output->width * output->nChannels) + (k * output->nChannels) + j;
                                    auto kernelIndex = (n * kernel->width * kernel->nElements * kernel->nChannels) + (m * kernel->nElements * kernel->nChannels) + (i * kernel->nElements) + j;
                                    // Accumualate on output elements
                                    (*output)[outputIndex] += (*this)[inputIndex] * (*kernel)[kernelIndex];
                                    // std::cout << "i: " << i << " | i_*Cib: " << i_*Cib << " | Cib: " << Cib << std::endl;
                                    // std::cout << "j: " << j << " | j_*Cob: " << j_*Cob << std::endl;
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    }
    break;

    default:
        std::cerr << "Please insert a valid order for memory blocking convolution";
        std::cerr << "Order number: " << orderNumber << " is not valid\n";
        break;
    }


    if constexpr (DO_TIME){
        c.stop();
        // std::cout << c.getTime() << std::endl;
        if(executionTime != nullptr) {
            *executionTime = c.getTime();
        }
    }

    return *output;
}



// template <class T>
// std::ostream& operator<<(std::ostream& os, const Tensor<T>& tensor)

// Define the possible template types
template class Tensor<float>;
// template class Tensor<double>;
