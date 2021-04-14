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
