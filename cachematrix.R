## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


##########################################################
#makeCacheMatrix Function  creates a special "vector",   #
#which is  a list containing a function to :             #
#                                                        #
#set the value of the vector                             #
#get the value of the vector                             #
#set the value of the solve (Inverse of the Matrix)      # 
#get the value of the solve (Inverse of the Matrix)      #
##########################################################


makeCacheMatrix <- function(x = numeric()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setsolve <- function(solve) m <<- solve
        getsolve <- function() m
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)
}


##########################################################
# The following function calculates the Inverse of       #
# the special "vector" created with the above function.  #
# this is done using the solve() R function.             #
# However, it first checks to see if the Inverse  has    #
# already been calculated. If so, it gets the Inverse    #
# Matrix from the cache and skips the computation.       #
# Otherwise, it calculates the Inverse of the Matrix     #
# Using the solve() R function , o and sets the value    # 
# of the Inverse Matrix in the cache via the setsolve    #
# function.                                               #
##########################################################





cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getsolve()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setsolve(m)
        m
}


