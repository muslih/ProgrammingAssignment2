## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# this function will create a matrix object 
makeCacheMatrix <- function(x = matrix()) {
  inver <- NULL
  set <- function(y) {
    x <<- y
    inver <<- NULL
  }

  get <- function() x
  setInverse <- function(inverse) inver <<- inverse
  getInverse <- function() inver
  list( set =  set,
        get = get,
        setInverse = setInverse,
        getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse()
  if (!is.null(inv)) {
          message("getting cached data")
          return(inv)
  }
  mat <- x$get()
  inv <- solve(mat, ...)
  x$setInverse(inv)
  inv
}
