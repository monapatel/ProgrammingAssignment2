## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# Set a matrix value
# get the matrix value
# set value of inverse matrix
# get value of inverse matrix

makeCacheMatrix <- function(x = matrix()) {

  m <- NULL
  setmatrix <- function(y) {
    
        x <<- y 
        m <<- NULL
  }
  
  getmatrix <- function() x
  setmatrixinverse <- function(inv) i <<- inv 
  getmatrixinverse <- function()i 
  list(
    setmatrix = setmatrix,
    getmatrix = getmatrix, 
    setmatrixinverse = setmatrixinverse,
    getmatrixinverse = getmatrixinverse
    )
}


## Write a short comment describing this function
# gets the inverse of the above function 

cacheSolve <- function(x, ...) {
  
  m <- x$getmatrix()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
}


