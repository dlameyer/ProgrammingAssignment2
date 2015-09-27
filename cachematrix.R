## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## This function take in a matrix 'x' and will allow 4 other functions, get(), set(), getinverse(), and setinverse() to act upon it.
## $get will retrieve the matrix x and print
## $set will replace the matrix x with a new matrix
## $setinverse and $getinverse will do the same except retrieve and set the inverse matrix (whether accurate or not)
## Edited by Daniel Lameyer



makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) i <<- inverse
        getinverse <- function() i
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## Write a short comment describing this function
## this function will take in the function from above, and will solve for the inverse of the matirx value saved in function of x

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getinverse()
        if(!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setinverse(i)
        i
}
