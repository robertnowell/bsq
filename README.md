# bsq
A maximum square problem for finding largest area of a two dimensional map free of obstacle characters.
See bsq_subject.pdf for project information.

## Implementation

Implemented with recursive backtracking and dynamic programing in C. Allowed functions include open, close, read, write, malloc, free.

## Use

![alt text](https://github.com/robertnowell/bsq/blob/master/Screen%20Shot%202017-01-19%20at%2012.44.21%20PM.png "Usage")  

To use the program, first clone the repository. In the directory into which the repo was cloned, run the executable bsq with a map from the test_maps directory as in the following command:
```
./bsq test_maps/500_500.txt
```
## Authors

* **Robert Nowell** (https://github.com/robertnowell)
* **Daniel Tse** (https://github.com/tsetsefly/)

## Acknowledgments

* This project was completed at School 42, Fremont
* Algorithm inspired by http://www.geeksforgeeks.org/maximum-size-sub-matrix-with-all-1s-in-a-binary-matrix/
