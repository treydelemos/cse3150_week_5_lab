CXX = g++
CXXFLAGS = -std=c++17 -g -Wall
TARGET = solution
SRC = starter.cpp

all: $(TARGET)

$(TARGET): $(SRC)
	$(CXX) $(CXXFLAGS) $^ -o $@

test:
	pytest test_game.py

clean:
	rm -f $(TARGET)
	rm -f *.o
	rm -f *.csv