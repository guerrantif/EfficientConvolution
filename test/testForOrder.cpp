/* Test the order of the for-loops of the convolution */
#include <iostream>

void convolution1(int Ho, int Wo, int Co, int Hf, int Wf, int Cf, int stride);

int main() {
    // Convolution parameters
    uint32_t stride = 1;

    // Input
    uint32_t Hi = 3;
    uint32_t Wi = 3;
    uint32_t Ci = 2;

    // Kernel
    uint32_t Hf = 2;
    uint32_t Wf = 2;
    uint32_t Cf = Ci;
    uint32_t Ef = 2;

    // Output
    uint32_t Ho = ((Hi - Hf) / stride) + 1;
    uint32_t Wo = ((Wi - Wf) / stride) + 1;
    uint32_t Co = Ef;

    // Convolution1
    convolution1(Ho, Wo, Co, Hf, Wf, Cf, stride);

    return 0;
}

void convolution1(int Ho, int Wo, int Co, int Hf, int Wf, int Cf, int stride) {
    std::cout << "------------------------ Convolution: order 1 ----------------------------\n";
    std::cout << "OUTPUT\t\t\t| KERNEL \t\t\t| INPUT\n";
    std::cout << "Co\tWo\tHo\t| Ef\tCf\tWf\tHf\t| Ci\tWi\tHi\n";
    std::cout << "--------------------------------------------------------------------------\n";
    for(int l = 0; l < Ho; l++) {
        for(int n = 0; n < Hf; n++) {
            for(int m = 0; m < Wf; m++) {
                for(int i = 0; i < Cf; i++) {
                    for(int k = 0; k < Wo; k++) {
                        for(int j = 0; j < Co; j++) {
                            std::cout << j << "\t" << k << "\t" << l << "\t  ";                     // output
                            std::cout << j << "\t" << i << "\t" << m << "\t" << n << "\t  ";        // kernel
                            std::cout << i << "\t" << (l*n)+stride << "\t" << (k*m)+stride << "\t"; // input
                            std::cout << std::endl;
                        }
                    }
                }
            }
        }
    }
    std::cout << "--------------------------------------------------------------------------\n";
}