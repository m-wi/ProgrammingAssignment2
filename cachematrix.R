## Put comments here that give an overall description of what your
## functions do
## the <<- operator can be used to assign a value to an object in an environment that is different from the current environment
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

    # initialize the stored inverse value to NULL
        m <- NULL
    # sets the value of the matrix      
	set <- function(y) {
                x <<- y
                m <<- NULL #changed envirenment
        }
	# gets and sets the value of the vector
        get <- function() x
        setmean <- function(mean) m <<- mean
        getmean <- function() m
        list(set = set, get = get,
             setmean = setmean,
             getmean = getmean)
}

}


## Write a short comment describing this function
## Return a matrix that is the inverse of 'x'
cacheSolve <- function(x, ...) {
  # check if the inverse is already cached
  m <- x$getsolve()
  if(!is.null(m)) {
    message("getting cached data")
    return(s)
  }
  # matrix is data
  data <- x$get()
  # get the inverse
  m <- solve(data, ...)
  x$setsolve(m)
  ## returns the inverse
  m
}


#cachemean <- function(x, ...) {
#        m <- x$getmean()
#        if(!is.null(m)) {
#                message("getting cached data")
#                return(m)
#        }
#        data <- x$get()
#        m <- mean(data, ...)
#        x$setmean(m)
#        m
#}
