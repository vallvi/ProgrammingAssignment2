## The two functions together are used to store a square invertible matrix and cache's its inverse.


## makeCacheMatrix function accepts a square invertible matrix as input and creates a special matrix which is a
## list of functions to set input matrix, get the matrix, set its inverse matrix and get it.This function can 
## cache the inverse of its input matrix.

makeCacheMatrix <- function(x = matrix()) {
	I <- numeric()
	set <- function(y){
		x <<- y
		I <<- numeric()
	}
	get <- function() x
	setinverse <- function(inverse)
	I <<- inverse
	getinverse <- function() I
	list(set=set,get=get,setinverse=setinverse, getinverse=getinverse)

}


## cacheSolve function accepts the special matrix created from the above function as its input. 
## If the inverse is already calculated, this function returns the inverse from the cache. Otherwise, it calculates the inverse using solve function and prints the inverse.

cacheSolve <- function(x, ...) {
		I <- x$getinverse()
	if(is.matrix(I)) {
		message("getting cahed data")
		print(I)
	}else{
	data <- x$get()
	I <- solve(data,...)
	x$setinverse(I)
	I}

}
