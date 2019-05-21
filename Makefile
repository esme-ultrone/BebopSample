CXX=g++
CXXFLAGS=-c -std=c++17 -Wall -Wextra
LDFLAGS= -lardiscovery -larsal -larcontroller -lcurses
SOURCES=BebopSample.cpp ihm.cpp
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=app

all: $(SOURCES) $(EXECUTABLE)
    
$(EXECUTABLE): $(OBJECTS) 
	$(CXX) $(OBJECTS) -o $@ $(LDFLAGS)

.cpp.o:
	$(CXX) $(CXXFLAGS) $< -o $@

clean:
	rm $(EXECUTABLE)
	rm $(OBJECTS)
