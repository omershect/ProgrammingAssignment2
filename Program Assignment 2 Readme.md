## Program Assignment 2
#### Lexical Scoping

The Assignment has two functions, which return an inverse of a Matrix and cache it to the memory.
If the results are in the memory, the answer is taken from the memory.
This assignment makes use of R lexical scoping


<<<<<<< HEAD
=======


>>>>>>> 03188ddd0c9a651279ef327669c2cfc5523c8b78
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

<<<<<<< HEAD
=======

>>>>>>> 03188ddd0c9a651279ef327669c2cfc5523c8b78
