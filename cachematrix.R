## A Function that will cache the inverse of a matrix

## Create a special "matrix", which is a list containing
## a function to
##   - sets the value of the matrix
##   - gets the value of the matrix
##   - sets the value of the inverse matrix
##   - gets the value of the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y) {
        x <<- y
        i <<- NULL
    }
    get <- function() x
    setinverse <- function(inv) i <<- inv
    getinverse <- function() i
    list(
        set = set,
        get = get,
        setinverse = setinverse,
        getinverse = getinverse
    )
}


## Finds the inverse of the  "matrix" created with the above
## function, will re-use cached result if available

cacheSolve <- function(x, ...) {
    i <- x$getinverse()
    if(!is.null(i)) {
        message("getting cached data")
        return(i)
    }
    m <- x$get()
    i <- solve(m, ...)
    x$setinverse(i)
    i
}
