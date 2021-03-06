## Put comments here that give an overall description of what your
## functions do

## The main scope of this function is to cache the invers result of a matrix


## Write a short comment describing this function

## This function creates a particular object that is the input for chaceSolve function


makeCacheMatrix <- function(x = matrix()) {
    I <- NULL
    set <- function(y) {
        x <<- y
        I <<- NULL
    }
    get <- function() x
    setinv <- function(inve) I <<- inve
    getinv <- function() I
    list(set = set, get = get,
         setinv = setinv,
         getinv = getinv)

}


## Write a short comment describing this function


## This function calculate the inverse of a matrix and cache his result
## so if matrix doesn't change we have already the value of inverse stored


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    I <- x$getinv()
    if(!is.null(I)) {
        message("getting cached data")
        return(I)
    }
    data <- x$get()
    I <- solve(data, ...)
    x$setinv(I)
    I
}
