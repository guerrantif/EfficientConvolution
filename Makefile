CXX 		= icpx
STD 		= c++17
OPT 		= O3
EXTRA_FLAG	= -no-vec
CXXFLAGS	= --std=$(STD) $(INCLUDES) -${OPT} -msse4 -march=native # ${EXTRA_FLAG}

TARGETS 	=  benchmark_Naive benchmark_NaiveOptimised benchmark_MemoryBlocking benchmark_NaiveKernelNKernels

BIN_DIR 	= ./bin
ASM_DIR 	= ./asm
SRC_DIR 	= ./src
TEST_DIR	= ./test
BUILD_DIR	= ./build
INCLUDE_DIR	= ./include

INCLUDES	= -I$(INCLUDE_DIR)
LDFLAGS		= -pthread

SOURCES 	= $(shell find $(SRC_DIR) -name '*.cpp' | sort -k 1nr | cut -f2-)
TESTS		= $(shell find $(TEST_DIR) -name '*.cpp' | sort -k 1nr | cut -f2-)
OBJECTS 	= $(SOURCES:$(SRC_DIR)/%.cpp=$(BUILD_DIR)/%.o)
ASMS_SRC	= $(SOURCES:$(SRC_DIR)/%.cpp=$(ASM_DIR)/%.s)
ASMS_TEST 	= $(TESTS:$(TEST_DIR)/%.cpp=$(ASM_DIR)/%.s)

# COLORS
GREEN="\e[92m"
BLUE = '\033[34m'
RESET_COLOR="\e[0m"

all: dirs $(addprefix $(BIN_DIR)/, $(TARGETS)) 
asm: $(ASMS_SRC) $(ASMS_TEST) 

debug:
	@echo $(SOURCES)
	@echo $(OBJECTS)
	@echo $(ASMS_TEST)
	@echo $(ASMS_SRC)

dirs:
	@mkdir -p $(BIN_DIR)
	@mkdir -p $(BUILD_DIR)
	@mkdir -p $(ASM_DIR)


# benchmark_NaiveKernelNKernels
$(BIN_DIR)/benchmark_NaiveKernelNKernels: $(OBJECTS) $(BUILD_DIR)/benchmark_NaiveKernelNKernels.o
	$(CXX) -o $@ $^ $(LDFLAGS)
	@echo ${GREEN} "$(BIN_DIR)/benchmark_NaiveKernelNKernels built successfully." ${RESET_COLOR}

# benchmark_StaticNaive
$(BIN_DIR)/benchmark_StaticNaive: $(OBJECTS) $(BUILD_DIR)/benchmark_StaticNaive.o
	$(CXX) -o $@ $^ $(LDFLAGS)
	@echo ${GREEN} "$(BIN_DIR)/benchmark_StaticNaive built successfully." ${RESET_COLOR}

# benchmark_NaiveOptimised
$(BIN_DIR)/benchmark_NaiveOptimised: $(OBJECTS) $(BUILD_DIR)/benchmark_NaiveOptimised.o
	$(CXX) -o $@ $^ $(LDFLAGS)
	@echo ${GREEN} "$(BIN_DIR)/benchmark_NaiveOptimised built successfully." ${RESET_COLOR}

# benchmark_MemoryBlocking
$(BIN_DIR)/benchmark_MemoryBlocking: $(OBJECTS) $(BUILD_DIR)/benchmark_MemoryBlocking.o
	$(CXX) -o $@ $^ $(LDFLAGS)
	@echo ${GREEN} "$(BIN_DIR)/benchmark_MemoryBlocking built successfully." ${RESET_COLOR}

# benchmark_Compilers
$(BIN_DIR)/benchmark_Compilers: $(OBJECTS) $(BUILD_DIR)/benchmark_Compilers.o
	$(CXX) -o $@ $^ $(LDFLAGS)
	@echo ${GREEN} "$(BIN_DIR)/benchmark_Compilers built successfully." ${RESET_COLOR}

# benchmark_AlexNet
$(BIN_DIR)/benchmark_AlexNet: $(OBJECTS) $(BUILD_DIR)/benchmark_AlexNet.o
	$(CXX) -o $@ $^ $(LDFLAGS)
	@echo ${GREEN} "$(BIN_DIR)/benchmark_AlexNet built successfully." ${RESET_COLOR}

# benchmark_Naive
$(BIN_DIR)/benchmark_Naive: $(OBJECTS) $(BUILD_DIR)/benchmark_Naive.o
	$(CXX) -o $@ $^ $(LDFLAGS)
	@echo ${GREEN} "$(BIN_DIR)/benchmark_Naive built successfully." ${RESET_COLOR}

# benchmark
$(BIN_DIR)/benchmark: $(OBJECTS) $(BUILD_DIR)/benchmark.o
	$(CXX) -o $@ $^ $(LDFLAGS)
	@echo ${GREEN} "$(BIN_DIR)/benchmark built successfully." ${RESET_COLOR}
	

#### Generate assembly code ####
# Source
$(ASM_DIR)/%.s: $(SRC_DIR)/%.cpp
	$(CXX) -S $^ -o $@ $(CXXFLAGS)
	@echo ${BLUE} "$@ assembly code generated." ${RESET_COLOR}
# Test 
$(ASM_DIR)/%.s: $(TEST_DIR)/%.cpp
	$(CXX) -S $^ -o $@ $(CXXFLAGS)
	@echo ${BLUE} "$@ assembly code generated." ${RESET_COLOR}

# Compile src folder
$(BUILD_DIR)/%.o: $(SRC_DIR)/%.cpp
	$(CXX) -c $< -o $@ $(CXXFLAGS)

# Compile test folder
$(BUILD_DIR)/%.o: $(TEST_DIR)/%.cpp
	$(CXX) -c $< -o $@ $(CXXFLAGS)

clean:
	rm -rf $(BUILD_DIR)/*.o
	rm -rf $(BIN_DIR)/*
	rm -rf $(ASM_DIR)/*.s

clean_build:
	rm -rf $(BUILD_DIR)/*.o