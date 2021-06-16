#!/bin/bash
# $1: Number of repetitions: ex. 1 | 50
# Example: ./copy_and_move.sh 50 --> (50 repetitions)

if [ "$#" -ne 1 ]; then
    echo "Insert the following arguments:"
    echo "\t -"
fi

# N_REPETITIONS=$1

# for NUMBER in "${analysis_number[@]}"
# do
#     cp bin/benchmark_Naive${NUMBER} ../../PerformanceAnalysis/Analysis_N${NUMBER}/bin/${N_REPETITIONS}_repetitions/
#     mv ../../PerformanceAnalysis/Analysis_N${NUMBER}/bin/${N_REPETITIONS}_repetitions/benchmark_Naive${NUMBER} ../../PerformanceAnalysis/Analysis_N${NUMBER}/bin/${N_REPETITIONS}_repetitions/benchmark_Naive${NUMBER}_${SIZE}
# done
