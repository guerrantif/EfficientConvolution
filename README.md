# Efficient Convolution
Implementation of an efficient convolution algorithm between 3D and/or 4D tensors.

## Abstract
The aim of this project is to implement the efficient Direct Convolution algorithm based on the paper [High Performance Zero-Memory Overhead Direct Convolutions][main-paper] by Zhang et al.
The main problem when performing convolutions in deep neural network is that, usually, those higly specialized algorithms trade space for time, incurring in an important memory overhead. The direct convolution could allow us to reduce the memory overhead while keeping performances high.


## Outline
- Implementation of the `Tensor` class
- Implementation of the `ConvolveThread` method
- Implementation of the `ConvolveParallel` methods
  - `ConvolveParallelHo`
  - `ConvolveParallelCo`
  - `ConvolveParallelEo`


## Info

Authors: 

- Filippo Guerranti* \<filippo.guerranti@student.unisi.it\>
- Mirco Mannino* \<mirco.mannino@student.unisi.it\>

> \* Equal contribution.

We are M.Sc. students in Computer and Automation Engineering at [University of Siena][unisi], [Department of Information Engineering and Mathematical Sciences][diism]. This project is inherent the Design of Applications, Systems and Servises held by prof. [Sandro Bartolini][bartolini].

For any suggestion or doubts please contact one us by email.

Link to this project: [https://github.com/filippoguerranti/efficientconvolution][project]



[main-paper]: http://proceedings.mlr.press/v80/zhang18d/zhang18d.pdf

[project]: https://github.com/filippoguerranti/efficientconvolution
[unisi]: https://www.unisi.it/
[diism]: https://www.diism.unisi.it/it
[bartolini]: http://frankie.dii.unisi.it/sandroHome/
