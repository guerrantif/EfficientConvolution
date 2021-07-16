CXX 		= g++
STD 		= c++17
OPT 		= O3
CXXFLAGS	= --std=$(STD) $(INCLUDES) -${OPT} -msse4 -march=native 

TARGETS 	= benchmark_AlexNet

BIN_DIR 	= ./bin
SRC_DIR 	= ./src
TEST_DIR	= ./test
BUILD_DIR	= ./build
INCLUDE_DIR	= ./include

INCLUDES	= -I$(INCLUDE_DIR)
LDFLAGS		= -pthread

SOURCES 	= $(shell find $(SRC_DIR) -name '*.cpp' | sort -k 1nr | cut -f2-)
OBJECTS 	= $(SOURCES:$(SRC_DIR)/%.cpp=$(BUILD_DIR)/%.o)

# COLORS
GREEN="\e[92m"
RESET_COLOR="\e[0m"

all: dirs $(addprefix $(BIN_DIR)/, $(TARGETS))

dirs:
	@mkdir -p $(BIN_DIR)
	@mkdir -p $(BUILD_DIR)

# testForOrder
$(BIN_DIR)/testForOrder: $(OBJECTS) $(BUILD_DIR)/testForOrder.o
	$(CXX) -o $@ $^ $(LDFLAGS)
	@echo ${GREEN} "$(BIN_DIR)/testForOrder built successfully." ${RESET_COLOR}

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
	

# Compile src folder
$(BUILD_DIR)/%.o : $(SRC_DIR)/%.cpp
	$(CXX) -c $< -o $@ $(CXXFLAGS)

# Compile test folder
$(BUILD_DIR)/%.o: $(TEST_DIR)/%.cpp
	$(CXX) -c $< -o $@ $(CXXFLAGS)

clean:
	rm -rf $(BUILD_DIR)/*.o
	rm -rf $(BIN_DIR)/*

clean_build:
	rm -rf $(BUILD_DIR)/*.o