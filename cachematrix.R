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

# create function for matrix inverse
cacheSolve <- function(x, ...) {
}
