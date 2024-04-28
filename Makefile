CC = gcc

ifeq ($(CC), clang)
CXX := clang++
else
CXX := g++
endif

SRC_DIR = .

CXXFLAGS := -Wall -Werror
CXXFLAGS += -O2

all: build_dir build 

.PHNOY : build_dir build run clean

# Linux | Windows
# MAKE_HOST := x86_64-pc-linux-gnu
ifeq ($(MAKE_HOST), x86_64-pc-linux-gnu)
############################################################
# if Linux
WORK_DIR := $(shell pwd)
BUILD_DIR = $(WORK_DIR)/build
CXXSRC  = $(wildcard $(SRC_DIR)/*.cpp)
BINARY = $(BUILD_DIR)/main
OBJS = $(patsubst $(SRC_DIR)/%.cpp,$(BUILD_DIR)/%.o,$(CXXSRC))

# Object
$(BUILD_DIR)/%.o : $(SRC_DIR)/%.cpp
	@echo + CXX $<
	$(CXX) $(CXXFLAGS) -c $< -o $@

build_dir:
	@mkdir -p $(BUILD_DIR)

clean :
	-rm -rf $(BUILD_DIR)
###########################################################
else
###########################################################
# if WINDOWS
WORK_DIR = .
BUILD_DIR = build
CXXSRC := $(wildcard $(SRC_DIR)/*.cpp)
# $(info Source files: $(CXXSRC))

BINARY = $(BUILD_DIR)\main.exe
OBJS = $(patsubst $(SRC_DIR)/%.cpp,$(BUILD_DIR)/%.o,$(CXXSRC))

# Object
$(BUILD_DIR)/%.o : $(SRC_DIR)/%.cpp
	@echo + CXX $<
	$(CXX) $(CXXFLAGS) -c $< -o $@

build_dir:
	@if not exist $(BUILD_DIR) mkdir $(BUILD_DIR)

clean : 
	rmdir /s /q .\build
###########################################################
endif

build : build_dir $(OBJS)



# Link
$(BINARY) : $(OBJS)
	$(CXX) $(OBJS) -o $(BINARY)

run : $(BINARY)
	@echo $(CXXSRC)
	$(BINARY)