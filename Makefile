CXX=g++
STD=c++17
CXXFLAGS= -O0 --std=$(STD)

TARGETS= testTensor

OUT_DIR=./bin
SRC_DIR=./src
TEST_DIR=./test
BUILD_DIR=./build

INCLUDES=-I./include
LDFLAGS= -pthread

SOURCES = $(shell find $(SRC_DIR) -name '*.cpp' | sort -k 1nr | cut -f2-)
OBJECTS = $(SOURCES:$(SRC_DIR)/%.cpp=$(BUILD_DIR)/%.o)

all: $(OUT_DIR)/$(TARGETS) dirs

dirs:
	@mkdir -p $(OUT_DIR)
	@mkdir -p $(BUILD_DIR)

# testTensor
$(OUT_DIR)/testTensor: $(OBJECTS) $(BUILD_DIR)/testTensor.o
	$(CXX) -o $@ $^ $(LDFLAGS)

# benchmark naive
$(OUT_DIR)/benchmarkNaive: $(BUILD_DIR)/Tensor.o $(BUILD_DIR)/Chronometer.o $(BUILD_DIR)/benchmarkNaive.o
	$(CXX) -o $@ $^ $(LDFLAGS)


# Compile src folder
$(BUILD_DIR)/%.o : $(SRC_DIR)/%.cpp
	$(CXX) -c $< -o $@ $(CXXFLAGS) $(INCLUDES)

# Compile test folder
$(BUILD_DIR)/%.o: $(TEST_DIR)/%.cpp
	$(CXX) -c $< -o $@ $(CXXFLAGS) $(INCLUDES)

clean:
	- rm -rf $(BUILD_DIR)/*.o
	- rm -rf $(OUT_DIR)/$(TARGETS)
