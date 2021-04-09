#include <iostream>
#include <cmath>
#include <limits>
#include <thread>
#include <random>
#include <stdexcept>

#include "Tensor.hh"

// Check indices for at() operator
template <class T>
void Tensor<T>::checkIdx(const int32_t& E_idx, const int32_t& C_idx, const int32_t& H_idx, const int32_t W_idx) const {
    if(E_idx < 0 || C_idx < 0 || H_idx < 0 || W_idx < 0){
        throw std::invalid_argument("OUT-OF-INDEX ERROR: cannot handle negative indices");
    }
    if(E_idx >= this->nElements){
        throw std::invalid_argument("OUT-OF-INDEX ERROR: the provided index was " + std::to_string(E_idx) + ", but the maximum index for this dimension is " + std::to_string(this->nElements - 1));
    }
    if(C_idx >= this->nChannels){
        throw std::invalid_argument("OUT-OF-INDEX ERROR: the provided index was " + std::to_string(C_idx) + ", but the maximum index for this dimension is " + std::to_string(this->nChannels - 1));
    }
    if(H_idx >= this->height){
        throw std::invalid_argument("OUT-OF-INDEX ERROR: the provided index was " + std::to_string(H_idx) + ", but the maximum index for this dimension is " + std::to_string(this->height - 1));
    }
    if(W_idx >= this->width){
        throw std::invalid_argument("OUT-OF-INDEX ERROR: the provided index was " + std::to_string(W_idx) + ", but the maximum index for this dimension is " + std::to_string(this->width - 1));
    }
}

// Check indices for at() operator
template <class T>
void Tensor<T>::checkIdx(const int32_t& C_idx, const int32_t& H_idx, const int32_t W_idx) const {
    if(C_idx < 0 || H_idx < 0 || W_idx < 0){
        throw std::invalid_argument("OUT-OF-INDEX ERROR: cannot handle negative indices");
    }
    if(C_idx >= this->nChannels){
        throw std::invalid_argument("OUT-OF-INDEX ERROR: the provided index was " + std::to_string(C_idx) + ", but the maximum index for this dimension is " + std::to_string(this->nChannels - 1));
    }
    if(H_idx >= this->height){
        throw std::invalid_argument("OUT-OF-INDEX ERROR: the provided index was " + std::to_string(H_idx) + ", but the maximum index for this dimension is " + std::to_string(this->height - 1));
    }
    if(W_idx >= this->width){
        throw std::invalid_argument("OUT-OF-INDEX ERROR: the provided index was " + std::to_string(W_idx) + ", but the maximum index for this dimension is " + std::to_string(this->width - 1));
    }
}

// Check indices for operator[]
template <class T>
void Tensor<T>::checkIdx(const int32_t& idx) const {
    if(idx < 0){
        throw std::invalid_argument("OUT-OF-INDEX ERROR: cannot handle negative indices");
    }
    if(idx >= this->size){
        throw std::invalid_argument("OUT-OF-INDEX ERROR: the provided index was " + std::to_string(idx) + ", but the maximum index for this dimension is " + std::to_string(this->size - 1));
    }
}

template <class T>
void Tensor<T>::init_data(const tensor::init& init) {
    if(this->size != 0){
        this->data = new T[this->size];
        if(init == tensor::init::ZEROS){
            if constexpr (DO_PRINT){
                std::cout << "init::ZEROS at (" << this << ")" << std::endl;
            }
            for (auto i = 0; i < this->size; i++){
                this->data[i] = T{0};
            }
        }
        if(init == tensor::init::ONES){
            if constexpr (DO_PRINT){
                std::cout << "init::ONES at (" << this << ")" << std::endl;
            }
            for (auto i = 0; i < this->size; i++){
                this->data[i] = T{1};
            }
        }
        if(init == tensor::init::INCR){
            if constexpr (DO_PRINT){
                std::cout << "init::INCR at (" << this << ")" << std::endl;
            }
            for (auto i = 0; i < this->size; i++){
                this->data[i] = static_cast<T>(i);
            }
        }
        if(init == tensor::init::RAND){
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
Tensor<T>::Tensor(const uint32_t& nChannels_, const uint32_t& height_, const uint32_t& width_, const tensor::init& init)
    : nElements{1}, nChannels{nChannels_}, height{height_}, width{width_}, valid{true}{
    if constexpr (DO_PRINT){
        std::cout << "3D CONSTRUCTOR at (" << this << ")" << std::endl;
    }
    this->size = this->nElements * this->nChannels * this->height * this->width;
    this->shape = {this->nElements, this->nChannels, this->height, this->width};
    this->init_data(init);
}

// 4D constructor
template <class T>
Tensor<T>::Tensor(const uint32_t& nElements_, const uint32_t& nChannels_, const uint32_t& height_, const uint32_t& width_, const tensor::init& init)
    : nElements{nElements_}, nChannels{nChannels_}, height{height_}, width{width_}, valid{true}{
    if constexpr (DO_PRINT){
        std::cout << "4D CONSTRUCTOR at (" << this << ")" << std::endl;
    }
    this->size = this->nElements * this->nChannels * this->height * this->width;
    this->shape = {this->nElements, this->nChannels, this->height, this->width};
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
        std::cout << "DESTRUCTOR at (" << this << ")" << std::endl;
    }
    if(this->data != nullptr){
        delete[] this->data;
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

// 3D operator at() const
template <class T>
const T& Tensor<T>::at(const int32_t& C_idx, const int32_t& H_idx, const int32_t W_idx) const {
    this->checkIdx(C_idx, H_idx, W_idx);
    auto idx = (C_idx * this->height * this->width) + (H_idx * width) + (W_idx);
    return this->data[idx];
}


// 3D operator at() non-const
template <class T>
T& Tensor<T>::at(const int32_t& C_idx, const int32_t& H_idx, const int32_t W_idx) {
    this->checkIdx(C_idx, H_idx, W_idx);
    auto idx = (C_idx * this->height * this->width) + (H_idx * width) + (W_idx);
    return this->data[idx];
}

// 4D operator at() const
template <class T>
const T& Tensor<T>::at(const int32_t& E_idx, const int32_t& C_idx, const int32_t& H_idx, const int32_t W_idx) const {
    this->checkIdx(E_idx, C_idx, H_idx, W_idx);
    auto idx = (E_idx * this->nChannels * this->height * this->width) + (C_idx * this->height * this->width) + (H_idx * width) + (W_idx);
    return this->data[idx];
}

// 4D operator at() non-const
template <class T>
T& Tensor<T>::at(const int32_t& E_idx, const int32_t& C_idx, const int32_t& H_idx, const int32_t W_idx) {
    this->checkIdx(E_idx, C_idx, H_idx, W_idx);
    auto idx = (E_idx * this->nChannels * this->height * this->width) + (C_idx * this->height * this->width) + (H_idx * width) + (W_idx);
    return this->data[idx];
}

// Operator[] const
template <class T>
const T& Tensor<T>::operator[](const int32_t& idx) const {
    this->checkIdx(idx);
    return this->data[idx];
}

// Operator[] non-const
template <class T>
T& Tensor<T>::operator[](const int32_t& idx) {
    this->checkIdx(idx);
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
        if (this->data[i] != other.data[i]) return false;
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
Tensor<T> Tensor<T>::convolve(const Tensor<T>& kernel, const int32_t stride, const int32_t padding, const uint32_t nThreads) const {
    // return this->convolveNaive(kernel, stride, padding);
    return this->convolveParallelHo(kernel, stride, padding, nThreads);

    if(this->nElements == 1){ // image 3D
        if(kernel.nElements == 1){
            // 3D-3D convolution
            // output = this->convolveParallelHo(kernel, stride, padding, nThreads);
        }
        else{
            // 3D-4D convolution

        }
    }
    else{   // image 4D
        if(kernel.nElements == 1){
            // 4D-3D convolution
        }
        else{
            // 4D-4D convolution
        }
    }
}

// convolve thread (parallel in height dimension)
template <class T>
void Tensor<T>::convolveThreadHo(Tensor<T>& output, const Tensor<T>& kernel, const int32_t stride, const int32_t padding,
    const uint32_t start_Ho, const uint32_t end_Ho) const{

    uint32_t Eo = output.nElements;
    uint32_t Co = output.nChannels;
    uint32_t Wo = output.width;

    uint32_t Ci = this->nChannels;
    uint32_t Hi = this->height;
    uint32_t Wi = this->width;

    uint32_t Hf = kernel.height;
    uint32_t Wf = kernel.width;

    for(auto p = 0; p < Eo; p++) {
        for(auto j = 0; j < Co; j++) {
            for(auto i = 0; i < Ci; i++) {
                for(auto l = start_Ho; l < end_Ho; l++) {
                    for(auto n = 0; n < Hf; n++) {
                        for(auto k = 0; k < Wo; k++) {
                            for(auto m = 0; m < Wf; m++) {
                                auto Hi_idx = l*stride+n-padding;
                                auto Wi_idx = k*stride+m-padding;
                                bool isPaddingPosition = ((Hi_idx < 0) || (Hi_idx >= Hi)) || ((Wi_idx < 0) || (Wi_idx >= Wi));
                                auto inputTensorValue = (isPaddingPosition) ? T{} : (*this).at(p, i, Hi_idx, Wi_idx);
                                output.at(p, j, l, k) += inputTensorValue * kernel.at(j, i, n, m);
                            }
                        }
                    }
                }
            }
        }
    }
}

// convolve thread (parallel in nChannels dimension)
template <class T>
void Tensor<T>::convolveThreadCo(Tensor<T>& output, const Tensor<T>& kernel, const int32_t stride, const int32_t padding,
    const uint32_t start_Co, const uint32_t end_Co) const{

    uint32_t Eo = output.nElements;
    uint32_t Co = output.nChannels;
    uint32_t Wo = output.width;

    uint32_t Ci = this->nChannels;
    uint32_t Hi = this->height;
    uint32_t Wi = this->width;

    uint32_t Hf = kernel.height;
    uint32_t Wf = kernel.width;

    for(auto p = 0; p < Eo; p++) {
        for(auto j = 0; j < Co; j++) {
            for(auto i = 0; i < Ci; i++) {
                for(auto l = start_Ho; l < end_Ho; l++) {
                    for(auto n = 0; n < Hf; n++) {
                        for(auto k = 0; k < Wo; k++) {
                            for(auto m = 0; m < Wf; m++) {
                                auto Hi_idx = l*stride+n-padding;
                                auto Wi_idx = k*stride+m-padding;
                                bool isPaddingPosition = ((Hi_idx < 0) || (Hi_idx >= Hi)) || ((Wi_idx < 0) || (Wi_idx >= Wi));
                                auto inputTensorValue = (isPaddingPosition) ? T{} : (*this).at(p, i, Hi_idx, Wi_idx);
                                output.at(p, j, l, k) += inputTensorValue * kernel.at(j, i, n, m);
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
Tensor<T> Tensor<T>::convolveParallelHo(const Tensor<T>& kernel, const int32_t stride, const int32_t padding, const uint32_t nThreads) const {
    // Check for dimensions
    if(this->nChannels != kernel.nChannels) throw std::invalid_argument("Tensors have different dimensions");

    // Compute output dimensions
    uint32_t Eo = this->nElements;
    uint32_t Co = kernel.nElements;
    uint32_t Ho = (this->height - kernel.height + 2*padding) / stride + 1;
    uint32_t Wo = (this->width - kernel.width + 2*padding) / stride + 1;

    // Create the output
    Tensor<T> output(Eo, Co, Ho, Wo, tensor::init::ZEROS);

    // Create pool of threads
    std::vector<std::thread> threads;

    // Compute range for each thread;
    uint32_t thread_range = (nThreads > Ho) ? 1 : round(float(Ho)/float(nThreads));

    for(auto l = 0; l < Ho; l += thread_range) {
        if (threads.size() == nThreads-1) thread_range = Ho - l; // Manage situation in which nThreads is not a divider of H_o
        //std::cout << l << ", " << l + thread_range << std::endl;
        threads.emplace_back([&, l, thread_range]() {
            this->convolveThreadHo(output, kernel, stride, padding, l, l + thread_range);
        });
    }

    for(auto& thread : threads) {
        thread.join();
    }

    return output;
}

// Convolution operation (Naive)
template<class T>
Tensor<T> Tensor<T>::convolveNaive(const Tensor<T>& kernel, const int32_t stride, const int32_t padding) const {
    // Check for dimensions
    if(this->nChannels != kernel.nChannels) throw std::invalid_argument("Tensors have different dimensions");

    // Compute output dimensions
    uint32_t Eo = this->nElements;
    uint32_t Co = kernel.nElements;
    uint32_t Ho = (this->height - kernel.height + 2*padding) / stride + 1;
    uint32_t Wo = (this->width - kernel.width + 2*padding) / stride + 1;

    uint32_t Ci = this->nChannels;
    uint32_t Hi = this->height;
    uint32_t Wi = this->width;

    uint32_t Hf = kernel.height;
    uint32_t Wf = kernel.width;

    // Create the output
    Tensor<T> output(Eo, Co, Ho, Wo, tensor::init::ZEROS);

    // Convolution
    for(auto p = 0; p < Eo; p++) {
        for(auto j = 0; j < Co; j++) {
            for(auto i = 0; i < Ci; i++) {
                for(auto l = 0; l < Ho; l++) {
                    for(auto n = 0; n < Hf; n++) {
                        for(auto k = 0; k < Wo; k++) {
                            for(auto m = 0; m < Wf; m++) {
                                auto Hi_idx = l*stride+n-padding;
                                auto Wi_idx = k*stride+m-padding;
                                bool isPaddingPosition = ((Hi_idx < 0) || (Hi_idx >= Hi)) || ((Wi_idx < 0) || (Wi_idx >= Wi));
                                auto inputTensorValue = (isPaddingPosition) ? T{} : (*this).at(p, i, Hi_idx, Wi_idx);
                                output.at(p, j, l, k) += inputTensorValue * kernel.at(j, i, n, m);
                            }
                        }
                    }
                }
            }
        }
    }

    return output;
}

// template <class T>
// std::ostream& operator<<(std::ostream& os, const Tensor<T>& tensor)

// Define the possible template types
// template class Tensor<uint>;
// template class Tensor<int>;
template class Tensor<float>;
template class Tensor<double>;
