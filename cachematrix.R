## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
#This function will
#set the value of matrix
#get the value of matrix
#set the value of inverse
#get the value of inverse

inv <- NULL

set <- function(y){
  x<<-y
  inverse <<- NULL
}

get <- function() x

setinv<- function(inverse) inv <- inverse
getinv<- function() inv

list(set=set, get=get, setinv=setinv, getinv=getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getinv()
  if(!is.null(inv)){
    message("getting cached inverse")
    return(inv)
  }
  data <- x$get()
  inv<- solve(data,...)
  x$setinv(inv)
  inv
}
