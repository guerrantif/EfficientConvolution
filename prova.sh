declare -a arguments=( # (Image size, Image depth, Kernel size, N. Kernel, Cib size, Cob size, Wob size)
    "229 3 7 64"
    "112 64 1 64"
    "112 64 3 64"
    "56 64 1 256"
    "56 256 1 128"
    "56 128 3 128"
    "28 128 1 512"
    "28 512 1 256"
    "28 256 3 256"
    "14 256 1 1024"
    "14 1024 1 512"
    "14 512 3 512"
    "7 512 1 2048"

)

O="2 1"

for ARG in "${arguments[@]}"
do
    ./bin/benchmark_MemoryBlocking ${ARG} "-1" "-1" "-1" "1" "2"
done
