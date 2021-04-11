#ifndef __TENSOR_HH__
#define __TENSOR_HH__

#include <vector>
#include <iostream>

constexpr bool DO_PRINT = false;
constexpr bool DO_TIME = true;

namespace tensor{
    enum class init{
        ONES,
        ZEROS,
        RAND,
        INCR
    };
}

template <class T>
class Tensor {
private:
    // Main class members
    T* data;
    uint32_t nElements;
    uint32_t nChannels;
    uint32_t height;
    uint32_t width;
    // Secondary class members
    uint32_t size;
    std::vector<uint32_t> shape;
    bool valid;

    // Initialize data
    void init_data(const tensor::init& init);

    // convolve thread (parallel)
    void convolveThread(Tensor& output, const Tensor<T>& kernel, const int32_t stride, const int32_t padding,
        const uint32_t start_Eo, const uint32_t end_Eo,
        const uint32_t start_Co, const uint32_t end_Co,
        const uint32_t start_Ci, const uint32_t end_Ci,
        const uint32_t start_Ho, const uint32_t end_Ho,
        const uint32_t start_Hf, const uint32_t end_Hf,
        const uint32_t start_Wo, const uint32_t end_Wo,
        const uint32_t start_Wf, const uint32_t end_Wf) const;

public:
    // Convolution operator (parallel) - dimension: output height
    Tensor<T> convolveParallelHo(const Tensor<T>& kernel, const int32_t stride, const int32_t padding, const uint32_t nThreads, const float* executionTime=nullptr) const;

    // Convolution operator (parallel) - dimension: output nChannels
    Tensor<T> convolveParallelCo(const Tensor<T>& kernel, const int32_t stride, const int32_t padding, const uint32_t nThreads, const float* executionTime=nullptr) const;

    // Convolution operator (parallel) - dimension: output nElements
    Tensor<T> convolveParallelEo(const Tensor<T>& kernel, const int32_t stride, const int32_t padding, const uint32_t nThreads, const float* executionTime=nullptr) const;

    // Convolution Naive
    Tensor<T> convolveNaive(const Tensor<T>& kernel, const int32_t stride, const int32_t padding, const float* executionTime=nullptr) const;

public:
    // Default constructor
    Tensor();
    // 3D constructor
    Tensor(const uint32_t& nChannels_, const uint32_t& height_, const uint32_t& width_, const tensor::init& init);
    // 4D constructor
    Tensor(const uint32_t& nElements_, const uint32_t& nChannels_, const uint32_t& height_, const uint32_t& width_, const tensor::init& init);
    // Copy constructor
    Tensor(const Tensor<T>& other);
    // Move constructor
    Tensor(Tensor<T>&& other);

    // Destructor
    ~Tensor();

    // Copy operator
    Tensor<T>& operator=(const Tensor<T>& other);
    // Move operator
    Tensor<T>& operator=(Tensor<T>&& other);

    // 3D operator at() const
    const T& at(const int32_t& C_idx, const int32_t& H_idx, const int32_t W_idx) const;
    // 3D operator at() non-const
    T& at(const int32_t& C_idx, const int32_t& H_idx, const int32_t W_idx);

    // 4D operator at() const
    const T& at(const int32_t& E_idx, const int32_t& C_idx, const int32_t& H_idx, const int32_t W_idx) const;
    // 4D operator at() non-const
    T& at(const int32_t& E_idx, const int32_t& C_idx, const int32_t& H_idx, const int32_t W_idx);

    // Operator[] const
    const T& operator[](const int32_t& idx) const;
    // Operator[] non-const
    T& operator[](const int32_t& idx);

    // Operator* overloading
    Tensor<T> operator*(const T& value);
    // Operator+ overloading
    Tensor<T> operator+(const T& value);

    // Operator== overloading
    bool operator==(const Tensor<T>& other);

    // Provides a copy of this tensor
    Tensor<T> copy();

    // Get data non-const
    inline T* getData() { return this->data; }
    // Get number of elements non-const
    inline uint32_t& getNElements() { return this->nElements; }
    // Get number of channels non-const
    inline uint32_t& getNChannels() { return this->nChannels; }
    // Get height non-const
    inline uint32_t& getHeight() { return this->height; }
    // Get width non-const
    inline uint32_t& getWidth() { return this->width; }
    // Get size non-const
    inline uint32_t& getSize() { return this->size; }
    // Get shape non-const
    inline std::vector<uint32_t>& getShape() { return this->shape; }

    // Get data const
    inline const T* const getData() const { return this->data; }
    // Get number of elements const
    inline const uint32_t& getNElements() const { return this->nElements; }
    // Get number of channels const
    inline const uint32_t& getNChannels() const { return this->nChannels; }
    // Get height const
    inline const uint32_t& getHeight() const { return this->height; }
    // Get size const
    inline const uint32_t& getWidth() const { return this->width; }
    // Get size const
    inline const uint32_t& getSize() const { return this->size; }
    // Get shape const
    inline const std::vector<uint32_t>& getShape() const { return this->shape; }

    // Convolutions
    Tensor<T> convolve(const Tensor<T>& kernel, const int32_t stride, const int32_t padding, const uint32_t nThreads, const float* executionTime=nullptr) const;
    Tensor<T> convolve(const Tensor<T>& kernel, const int32_t stride, const int32_t padding, const float* executionTime=nullptr) const;

    // invalidate this tensor
    void invalidate();

    // Check validity
    bool isValid() const;
};

template <class T>
std::ostream& operator<<(std::ostream& os, const Tensor<T>& tensor) {
    auto data = tensor.getData();
    auto size = tensor.getSize();

    for(auto i = 0; i < size; i++){
        os << data[i] << ", ";
    }
    return os;
}


#endif
