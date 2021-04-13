CXX 		= g++
STD 		= c++17
OPT 		= O3
CXXFLAGS	= --std=$(STD) $(INCLUDES) -g

TARGETS		= testTensor benchmark_opt benchmark_nopt

BIN_DIR		= ./bin
SRC_DIR		= ./src
TEST_DIR	= ./test
BUILD_DIR	= ./build
INCLUDE_DIR	= ./include

INCLUDES	= -I$(INCLUDE_DIR)
LDFLAGS		= -pthread

SOURCES 	= $(shell find $(SRC_DIR) -name '*.cpp' | sort -k 1nr | cut -f2-)
OBJECTS 	= $(SOURCES:$(SRC_DIR)/%.cpp=$(BUILD_DIR)/%.o)

all: .dirs $(addprefix $(BIN_DIR)/, $(TARGETS))

.general: .clean_build .dirs

.dirs:
	@mkdir -p $(BIN_DIR)
	@mkdir -p $(BUILD_DIR)

opt: CXXFLAGS += -$(OPT)
opt: .general $(BIN_DIR)/benchmark_opt

nopt: .general $(BIN_DIR)/benchmark_nopt

# testTensor
$(BIN_DIR)/testTensor: $(OBJECTS) $(BUILD_DIR)/testTensor.o
	$(CXX) -o $@ $^ $(LDFLAGS)

# benchmark_opt
$(BIN_DIR)/benchmark_opt: $(OBJECTS) $(BUILD_DIR)/benchmark.o
	$(CXX) -o $@ $^ $(LDFLAGS)
	
# benchmark_nopt
$(BIN_DIR)/benchmark_nopt: $(OBJECTS) $(BUILD_DIR)/benchmark.o
	$(CXX) -o $@ $^ $(LDFLAGS)

# Compile src folder
$(BUILD_DIR)/%.o : $(SRC_DIR)/%.cpp
	$(CXX) -c $< -o $@ $(CXXFLAGS)

# Compile test folder
$(BUILD_DIR)/%.o: $(TEST_DIR)/%.cpp
	$(CXX) -c $< -o $@ $(CXXFLAGS)

.PHONY: clean
clean:
	@rm -rf $(BUILD_DIR)/*.o
	@rm -rf $(BIN_DIR)/*

.PHONY: clean_build
.clean_build:
	@rm -rf $(BUILD_DIR)/*.o