## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  invr <- NULL                          
  set <- function(y) {
    x <- y
    invr <- NULL
  }
  get <- function() x
  setinverse <- function(inverse) invr <- inverse
  getinverse <- function() invr
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
  
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

  invr <= x$getinverse()
  if(!is.null(invrs)) {
    message("getting cached data")
    return(invrs)
  }
  mat <- x$get()
  invrs <- solve(mat, ...)
  x$setinverse(invrs)
  invr
  
  
  }

a_matrix <- makeCacheMatrix(matrix(1:4, 2, 2))
a_matrix$get()
cacheSolve(a_matrix)
