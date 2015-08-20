##Trying to cache inverse of a matrix

## Creates a square inversible matrix

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        matinv <- function(matinv) m <<- solve
        list(set = set, get = get,
             matinv = matinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        m <- x$matinv()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(x)
        ## Return a matrix that is the inverse of 'x'
}
