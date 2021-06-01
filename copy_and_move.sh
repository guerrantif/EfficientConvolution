#!/bin/bash
# $1: Number of repetitions: ex. 1 | 50
# $2: Size of the input image: ex 10
# Example: ./copy_and_move.sh 50 10 --> (50 repetitions, image 10x10)

N_REPETITIONS=$1
SIZE=$2

declare -a analysis_number=("8")

for NUMBER in "${analysis_number[@]}"
do
    cp bin/benchmark_Naive${NUMBER} ../../PerformanceAnalysis/Analysis_N${NUMBER}/bin/${N_REPETITIONS}_repetitions/
    mv ../../PerformanceAnalysis/Analysis_N${NUMBER}/bin/${N_REPETITIONS}_repetitions/benchmark_Naive${NUMBER} ../../PerformanceAnalysis/Analysis_N${NUMBER}/bin/${N_REPETITIONS}_repetitions/benchmark_Naive${NUMBER}_${SIZE}
done
