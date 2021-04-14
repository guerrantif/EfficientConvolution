# Efficient Convolution
Implementation of an efficient convolution algorithm between 3D and/or 4D tensors.

## Abstract
The aim of this project is to implement the efficient Direct Convolution algorithm based on the paper [High Performance Zero-Memory Overhead Direct Convolutions][main-paper] by Zhang et al.
The main problem when performing convolutions in deep neural network is that, usually, those higly specialized algorithms trade space for time, incurring in an important memory overhead. The direct convolution could allow us to reduce the memory overhead while keeping performances high.


---
**Table of contents**

* [Tensor class](#tensor-class)
* [Convolve threads](#convolve-threads)
* [Convolution](#convolution)
* [Tests](#tests)
* [Future developments](#future-developments)
* [Directory structure](#directory-structure)
* [Documentation and references](#documentation-and-references)
* [Info](#info)

---

## Tensor class

## Convolve threads

## Convolution

## Tests

### Speed-up with respect to 1 thread for `convolveParallelHo`

The table shows the speed-up in terms of time that the algorith allows to achieve with respect to the naive implementation (single thread).
The columns represents the speed-up achieved with 2,3,...,8 thread in an Apple Silicon M1, with different dimensions for the input image and for the kernel.

| Input image   | Kernel   |     2     |     3     |     4     |     5     |     6     |     7     |     8     |
|---------------|----------|:---------:|:---------:|:---------:|:---------:|:---------:|:---------:|:---------:|
| 1x3x10x10     | 32x3x5x5 | 3.1008403 | 3.3915441 | 3.5549133 | 3.9171975 | 3.2829181 | 3.7653061 | 3.8437500 |
| 1x3x50x50     | 32x3x5x5 | 1.9456557 | 2.7072185 | 3.5367457 | 2.9330250 | 3.3124417 | 3.7365597 | 4.2070599 |
| 1x3x200x200   | 32x3x5x5 | 1.9322793 | 2.7761844 | 3.7216983 | 3.9267366 | 4.1905258 | 4.6358473 | 4.8186600 |
| 1x3x600x600   | 32x3x5x5 | 1.9326446 | 2.7914715 | 3.7261775 | 4.0380422 | 4.3352154 | 4.6780569 | 4.8617349 |
| 100x3x10x10   | 32x3x5x5 | 1.8964603 | 2.7382497 | 2.7367169 | 2.7963298 | 3.3518254 | 3.3156437 | 3.3070462 |
| 100x3x50x50   | 32x3x5x5 | 1.9328705 | 2.6964970 | 3.5830416 | 3.7938718 | 4.3005585 | 4.5927053 | 4.9176219 |
| 100x3x200x200 | 32x3x5x5 | 1.9679280 | 2.8054977 | 3.6861781 | 4.0198475 | 4.3909035 | 4.7371933 | 4.9570360 |
| 1x3x10x10     | 64x3x5x5 | 2.6594684 | 3.5617353 | 3.3010309 | 3.1988012 | 4.4287690 | 4.1638492 | 4.4971910 |
| 1x3x50x50     | 64x3x5x5 | 1.9312402 | 2.6857143 | 3.5560075 | 2.8283253 | 3.3241124 | 3.7305169 | 4.3058737 |
| 1x3x200x200   | 64x3x5x5 | 1.9324164 | 2.7778923 | 3.7322537 | 3.9953191 | 4.3397600 | 4.6645711 | 4.8468604 |
| 1x3x600x600   | 64x3x5x5 | 1.9410065 | 2.8079425 | 3.7326643 | 3.9491131 | 4.2610677 | 4.3410606 | 4.9740932 |
| 100x3x10x10   | 64x3x5x5 | 1.9175146 | 2.8268329 | 2.8268329 | 2.8487339 | 3.4202257 | 3.5204624 | 3.4878825 |
| 100x3x50x50   | 64x3x5x5 | 1.9343341 | 2.6959627 | 3.5862344 | 3.8268883 | 4.3338427 | 4.6194773 | 4.9430258 |

## Future developments

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

[project]: https://github.com/filippoguerranti/efficientconvolution
[unisi]: https://www.unisi.it/
[diism]: https://www.diism.unisi.it/it
[bartolini]: http://frankie.dii.unisi.it/sandroHome/
