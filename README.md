Clustring by DBSCAN
==================

C++ Implementation of clustering by DBSCAN

To run the implementation
=========================

1. Keep project files in one folder.

2. compile using command `make`.
> To compile without using the makefile, type the following command.
>
> `g++ -std=c++11 clustering.cpp -o clustering.exe`
> 
> (Note that -std=c++11 option is must be given in g++.)

3. Run using following command.
> ./clustering.exe [intput.txt] [n] [eps] [minPts]


Summary of the algorithm
============

Given a set D of objects, we identify all core objects w.r.t. the given parameters, ε (Eps) and MinPts.

- Arbitrary select an object o in D
- If o is a core point, a cluster is formed
> Collect all objects density-reachable from o, w.r.t. Eps and MinPts (DBSCAN iteratively collects directly density-reachable objects)

- Merge of a few density-reachable clusters may occur
- If o is a border object, no objects are density-reachable from o and DBSCAN visits the next object of the database
> If o is not density-reachable from any core point, p is considered to be noise and not added to any cluster

- Continue the process until all of the objects have been processed

Any other specification of the implementation and testing
============

- Note that I use c++11, not c++. therefore -std=c++11 option is must be given in g++.

> input1: 98.91%
>
> input2: 94.60%
>
> input3: 99.97%

