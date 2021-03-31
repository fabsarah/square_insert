# square_insert
Adding rows and columns of zeros to a square matrix. It's still square, but now it's bigger!

This Matlab function takes as input a square matrix (X) and a vector of integers corresponding to the rows and colums in X that are missing. For example, if this is my input matrix:

    1 1 1 1 1
    2 2 2 2 2
    4 4 4 4 4
    6 6 6 6 6
    7 7 7 7 7

And I know that there is missing data and want it add in some zeroes while preserving the nice square shape here, I can call the function like this:

output = square_insert(input,[3,5])

and my output matrix will look like this:

    1 1 0 1 0 1 1
    2 2 0 2 0 2 2
    0 0 0 0 0 0 0
    4 4 0 4 0 4 4
    0 0 0 0 0 0 0
    6 6 0 6 0 6 6
    7 7 0 7 0 7 7
