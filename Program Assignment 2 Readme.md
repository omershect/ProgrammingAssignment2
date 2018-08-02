## Program Asiignment 2
#### Lexical Scoping

The Assignment has two functions, which return an inverse of a Matrix and cache it to the memory.
If the results are in the memory, the answer is taken from the memory.
This assignment makes use of R lexical scoping

Here is a simple plot from R console using the I matrix (I is equal to the inverse matrix)
which illustrate the use of the function.
First creating the matrix 
calling the makeCacheMatrix , and then calling cachsolve twice with the output of makeCacheMatrix.
The return is the inverse of the matrix, but at the second time we see that the result is taken from the cache


source("cachematrix.R")
> x<-cbind(c(0,1),c(1,0))
> class(x)
[1] "matrix"
> y<-makeCacheMatrix(x)
> cacheSolve(y)
     [,1] [,2]
[1,]    0    1
[2,]    1    0
> cacheSolve(y)
getting cached data
     [,1] [,2]
[1,]    0    1
[2,]    1    0

