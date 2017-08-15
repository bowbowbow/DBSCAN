clustering.exe : clustering.o
	g++ -std=c++11 -o clustering.exe clustering.o

clustering.o : clustering.cpp
	g++ -std=c++11 -c -o clustering.o clustering.cpp

