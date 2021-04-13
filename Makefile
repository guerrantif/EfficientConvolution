CXX 		= g++
STD 		= c++17
opt 		= false
ifeq ($(opt), true)
OPT 		= O3
else
OPT 		= O0
endif
CXXFLAGS	= -$(OPT) --std=$(STD) $(INCLUDES) -g

TARGETS		= testTensor 
ifeq ($(opt), true)
TARGETS		+= benchmark_opt 
else
TARGETS		+= benchmark
endif

BIN_DIR		= ./bin
SRC_DIR		= ./src
TEST_DIR	= ./test
BUILD_DIR	= ./build
INCLUDE_DIR	= ./include

INCLUDES	= -I$(INCLUDE_DIR)
LDFLAGS		= -pthread

SOURCES 	= $(shell find $(SRC_DIR) -name '*.cpp' | sort -k 1nr | cut -f2-)
OBJECTS 	= $(SOURCES:$(SRC_DIR)/%.cpp=$(BUILD_DIR)/%.o)

all: dirs $(addprefix $(BIN_DIR)/, $(TARGETS))

dirs:
	@mkdir -p $(BIN_DIR)
	@mkdir -p $(BUILD_DIR)

# testTensor
$(BIN_DIR)/testTensor: $(OBJECTS) $(BUILD_DIR)/testTensor.o
	$(CXX) -o $@ $^ $(LDFLAGS)

ifeq ($(opt), true)
# benchmark_opt
$(BIN_DIR)/benchmark_opt: $(OBJECTS) $(BUILD_DIR)/benchmark.o
	$(CXX) -o $@ $^ $(LDFLAGS)
else
# benchmark
$(BIN_DIR)/benchmark: $(OBJECTS) $(BUILD_DIR)/benchmark.o
	$(CXX) -o $@ $^ $(LDFLAGS)
endif

# Compile src folder
$(BUILD_DIR)/%.o : $(SRC_DIR)/%.cpp
	$(CXX) -c $< -o $@ $(CXXFLAGS)

# Compile test folder
$(BUILD_DIR)/%.o: $(TEST_DIR)/%.cpp
	$(CXX) -c $< -o $@ $(CXXFLAGS)

.PHONY: clean

clean:
	- rm -rf $(BUILD_DIR)/*.o
	- rm -rf $(BIN_DIR)/*