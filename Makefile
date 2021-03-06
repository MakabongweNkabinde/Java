CXX = g++ -std=c++11
CFLAG = -c

huffencode: interface.o HuffmanNode.o HuffmanTree.o
	$(CXX) interface.o HuffmanNode.o HuffmanTree.o -o huffencode

interface.o: interface.cpp
	$(CXX) $(CFLAG) interface.cpp

HuffmanNode.o: HuffmanNode.cpp HuffmanNode.h
	$(CXX) $(CFLAG) HuffmanNode.cpp

HuffmanTree.o: HuffmanTree.cpp HuffmanTree.h
	$(CXX) $(CFLAG) HuffmanTree.cpp

clean:
	rm *.o huffencode a.out
