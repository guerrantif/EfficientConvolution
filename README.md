# Efficient Convolution
Implementation of an efficient convolution algorithm between 3D and/or 4D tensors.

> For further details we suggest to refer to the [slides][slides].

## Abstract
The aim of this project is to implement the efficient Direct Convolution algorithm based on the paper [High Performance Zero-Memory Overhead Direct Convolutions][main-paper] by Zhang et al.
The main problem when performing convolutions in deep neural network is that, usually, those higly specialized algorithms trade space for time, incurring in an important memory overhead. The direct convolution could allow us to reduce the memory overhead while keeping performances high.


---
**Table of contents**

* [Tensor class](#tensor-class)
  * [Attributes](#class-attributes)
  * [Constructors](#class-constructors)
  * [Operators-at](#operators-at)
  * [Convolve threads](#convolve-threads)
  * [Convolution](#convolution)
* [Tests](#tests)
* [Directory structure](#directory-structure)
* [Documentation and references](#documentation-and-references)
* [Info](#info)

---

## Tensor class

The project is entirely base on the `Tensor` class, which allows us to handle 3D and 4D tensor. Those tensors will be used as input images and kernels for the convolution operation.

### Class attributes
```c++
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
```
![](/img/tensor_to_data.png)

### Class constructors

```c++
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
```

### Operators-at
The convolution operation is mainly based on the `at()` (`_at()`) operator, that is used in the inner loop of the `convolveThread` method itself and provides high flexibility due to its overloading.

The operator comes in a `public` interface and in a `private` one. The former is more reliable and error-free, while the latter is used for performance issues.
```c++
public:
   // 3D operator at() const
   const T& at(const int32_t& C_idx, const int32_t& H_idx, const int32_t& W_idx) const;
   // 3D operator at() non-const
   T& at(const int32_t& C_idx, const int32_t& H_idx, const int32_t& W_idx);

   // 4D operator at() const
   const T& at(const int32_t& E_idx, const int32_t& C_idx, const int32_t& H_idx, const int32_t& W_idx) const;
   // 4D operator at() non-const
   T& at(const int32_t& E_idx, const int32_t& C_idx, const int32_t& H_idx, const int32_t& W_idx);
```
```c++
private:
   // 3D operator _at() const
   const T& _at(const int32_t& C_idx, const int32_t& H_idx, const int32_t& W_idx) const;
   // 3D operator _at() non-const
   T& _at(const int32_t& C_idx, const int32_t& H_idx, const int32_t& W_idx);

   // 4D operator _at() const
   const T& _at(const int32_t& E_idx, const int32_t& C_idx, const int32_t& H_idx, const int32_t& W_idx) const;
   // 4D operator _at() non-const
   T& _at(const int32_t& E_idx, const int32_t& C_idx, const int32_t& H_idx, const int32_t& W_idx);

```

### Convolve threads
The convolution operation is parallelized using several threads, each of them performing the convolution on different section of the original `data` pointers (input and kernel tensors). The involved method is `convolveThread` and is implemented in the fashion exposed in the [original paper](main-paper).

### Convolution
Once the `convolveThread` operation is implemented, one can decide the dimension in which to parallelize, whether the number of elments, the number of channels or the height.
![](/img/convolveThread.png)
```c++
public:
   // Convolution operator (parallel) - dimension: output height
   Tensor<T>& convolveParallelHo(const Tensor<T>& kernel, const int32_t stride, const int32_t padding, const uint32_t nThreads) const;
   // Convolution operator (parallel) - dimension: output nChannels
   Tensor<T>& convolveParallelCo(const Tensor<T>& kernel, const int32_t stride, const int32_t padding, const uint32_t nThreads) const;
   // Convolution operator (parallel) - dimension: output nElements
   Tensor<T>& convolveParallelEo(const Tensor<T>& kernel, const int32_t stride, const int32_t padding, const uint32_t nThreads) const;
   
   // Convolution Naive (sequential)
   Tensor<T>& convolveNaive(const Tensor<T>& kernel, const int32_t stride, const int32_t padding) const;

   // Convolution operator that select automatically dimension for parallelization
   Tensor<T>& convolve(const Tensor<T>& kernel, const int32_t stride, const int32_t padding, const uint32_t nThreads) const;
   // Convolution operator that select automatically dimension for parallelization and number of threads
   Tensor<T>& convolve(const Tensor<T>& kernel, const int32_t stride, const int32_t padding) const;

```


## Tests

### Speed-up: w.r.t. Naive impl. for different thread number
![](/img/results1.png)

### Speed-up: w.r.t. Naive impl. for 8 threads and different inputs
![](/img/results2.png)



## Directory structure

```
.
├── bin
│   ├── benchmark_nopt
│   └── benchmark_opt
├── build
│   ├── benchmark.o
│   ├── Chronometer.o
│   ├── Statistics.o
│   └── Tensor.o
├── doc
│   └── todo.txt
├── include
│   ├── Chronometer.hh
│   ├── Statistics.hh
│   └── Tensor.hh
├── src
│   ├── Chronometer.cpp
│   ├── Statistics.cpp
│   └── Tensor.cpp
├── test
│   ├── benchmark.cpp
│   └── testTensor.cpp
├── Makefile
└── README.md
```

## Documentation and references

[\[1\]][main-paper] Zhang, J., Franchetti, F. &amp; Low, T.M.. (2018). High Performance Zero-Memory Overhead Direct Convolutions. *Proceedings of the 35th International Conference on Machine Learning*, in *Proceedings of Machine Learning Research* 80:5776-5785

[\[2\]][concurrency-book] Williams, A. (2019). C++ concurrency in action (Second edition). *Manning Publications Co.*


## Info

Authors: 

- Filippo Guerranti* \<filippo.guerranti@student.unisi.it\>
- Mirco Mannino* \<mirco.mannino@student.unisi.it\>

> \* Equal contribution.

We are M.Sc. students in Computer and Automation Engineering at [University of Siena][unisi], [Department of Information Engineering and Mathematical Sciences][diism]. This project is inherent the Design of Applications, Systems and Servises held by prof. [Sandro Bartolini][bartolini].

For any suggestion or doubts please contact one us by email.

Link to this project: [https://github.com/filippoguerranti/efficientconvolution][project]



[main-paper]: http://proceedings.mlr.press/v80/zhang18d/zhang18d.pdf
[concurrency-book]: https://www.manning.com/books/c-plus-plus-concurrency-in-action-second-edition

[slides]: https://github.com/filippoguerranti/EfficientConvolution/blob/main/doc/EfficientConvolution.pdf
[project]: https://github.com/filippoguerranti/efficientconvolution
[unisi]: https://www.unisi.it/
[diism]: https://www.diism.unisi.it/it
[bartolini]: http://frankie.dii.unisi.it/sandroHome/
