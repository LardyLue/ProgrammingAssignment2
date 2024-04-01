## This program uses functions to cache the inverse of a matrix

## This function sets the matrix and the inverse into an environment

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


## This function calculates and caches the inverse of the matrix

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
