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

all: $(OUT_DIR)/$(TARGETS)

# testTensor
$(OUT_DIR)/testTensor: $(BUILD_DIR)/Tensor.o $(BUILD_DIR)/testTensor.o
	$(CXX) -o $(OUT_DIR)/testTensor $(BUILD_DIR)/testTensor.o $(BUILD_DIR)/Tensor.o $(LDFLAGS)


$(BUILD_DIR)/Tensor.o: $(SRC_DIR)/Tensor.cpp
	$(CXX) -c $< -o $@ $(CXXFLAGS) $(INCLUDES)

$(BUILD_DIR)/testTensor.o: $(TEST_DIR)/testTensor.cpp
	$(CXX) -c $< -o $@ $(CXXFLAGS) $(INCLUDES)

clean:
	- rm -rf $(BUILD_DIR)/*.o
	- rm -rf $(OUT_DIR)/$(TARGETS)
