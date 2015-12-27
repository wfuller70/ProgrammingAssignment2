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

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
