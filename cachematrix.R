## Functions that will cache the inverse of a matrix
##
## Usage example:
##
## > source('cachematrix.R')
## > m <- makeCacheMatrix(matrix(c(2, 0, 0, 2), c(2, 2)))
## > cacheSolve(m)
## [,1] [,2]
## [1,]  0.5  0.0
## [2,]  0.0  0.5

## Create a special "matrix", which is a list containing
## a function to
##   - set the value of the matrix
##   - get the value of the matrix
##   - set the value of the inverse matrix
##   - get the value of the inverse matrix

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
