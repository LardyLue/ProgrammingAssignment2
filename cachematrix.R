## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    invMatrix <- NULL
    set <- funtion(y) {
        x <<- y
        invMatrix <<- NULL
    }
    get <- function() x
    setAInv <- funtion(solve) invMatrix <<- solve
    getAInv <- funtion() invMatrix
    list(set = set, get = get,
         setAInv = setAInv,
         getAInv = getAInv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    invMatrix <- x$getAInv()
    if(!is.null(invMatrix)) {
        message("getting inversed matrix")
        return(invMatrix)
    }
    data <- x$get()
    invMatrix <- solve(data, ...)
    x$setAInv(invMatrix)
    invMatrix
}
