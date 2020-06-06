## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## set the input x as a matrix
## and then set the solved value "a" as a null
## then change "mean" to "inverse"

makeCacheMatrix <- function(x = matrix()) {
  a <- NULL
  set <- function(y) {
    x <<- y
    a <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) a <<- inverse
  getInverse <- function() a
  list(set = set, get = get, setInverse = setInverse, getInverse =getInverse  )
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

  a <- x$getInverse ()
  if(!is.null(a)) {
    message("getting inversed matrix")
    return(a)
  }
  data <- x$get()
  a <- solve(data, ...)
  x$setInverse(a)
  a
  
}

mat <- matrix(rnorm(16),2,2)
mat
matInv <- makeCacheMatrix(mat)
cacheSolve(matInv)