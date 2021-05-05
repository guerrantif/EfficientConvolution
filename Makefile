CXX 		= g++
STD 		= c++17
OPT 		= O3
CXXFLAGS	= --std=$(STD) $(INCLUDES) -${OPT} -msse4

TARGETS 	= benchmark_Naive2

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

# benchmark_Naive2
$(BIN_DIR)/benchmark_Naive2: $(OBJECTS) $(BUILD_DIR)/benchmark_Naive2.o
	$(CXX) -o $@ $^ $(LDFLAGS)
	@echo ${GREEN} "$(BIN_DIR)/benchmark_Naive2 built successfully." ${RESET_COLOR}

# benchmark
$(BIN_DIR)/benchmark: $(OBJECTS) $(BUILD_DIR)/benchmark.o
	$(CXX) -o $@ $^ $(LDFLAGS)
	@echo ${GREEN} "$(BIN_DIR)/benchmark built successfully." ${RESET_COLOR}

# benchmark_Ho
$(BIN_DIR)/benchmark_Ho: $(OBJECTS) $(BUILD_DIR)/benchmark_Ho.o
	$(CXX) -o $@ $^ $(LDFLAGS)
	@echo ${GREEN} "$(BIN_DIR)/benchmark_Ho built successfully." ${RESET_COLOR}

# benchmark_Co
$(BIN_DIR)/benchmark_Co: $(OBJECTS) $(BUILD_DIR)/benchmark_Co.o
	$(CXX) -o $@ $^ $(LDFLAGS)
	@echo ${GREEN} "$(BIN_DIR)/benchmark_Co built successfully." ${RESET_COLOR} 

# benchmark_Eo
$(BIN_DIR)/benchmark_Eo: $(OBJECTS) $(BUILD_DIR)/benchmark_Eo.o
	$(CXX) -o $@ $^ $(LDFLAGS)
	@echo ${GREEN} "$(BIN_DIR)/benchmark_Eo built successfully." ${RESET_COLOR} 
	

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