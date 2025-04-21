CXX := g++
CXXFLAGS := -std=c++11 -Wall -Iinc
SRC_DIR := src
INC_DIR := inc
BUILD_DIR := build

# Source files
SRCS := $(SRC_DIR)/Cylinder.cpp main.cpp
OBJS := $(patsubst $(SRC_DIR)/%.cpp,$(BUILD_DIR)/%.o,$(SRCS))

# Main target
Lab07: $(OBJS)
	$(CXX) $(CXXFLAGS) $^ -o $@

# Object file targets
$(BUILD_DIR)/%.o: $(SRC_DIR)/%.cpp $(INC_DIR)/%.h
	@mkdir -p $(BUILD_DIR)
	$(CXX) $(CXXFLAGS) -c $< -o $@

$(BUILD_DIR)/main.o: main.cpp $(INC_DIR)/Cylinder.h
	@mkdir -p $(BUILD_DIR)
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Clean target
clean:
	rm -rf $(BUILD_DIR) Lab07

.PHONY: clean