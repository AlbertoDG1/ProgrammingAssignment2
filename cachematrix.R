## By creating a matrix and running these two functions, you will get its inverse. The first function creates a list that
## allows the user to call arguments by its name (stores them) and calculate the inverse from a cached value. 

## 'makeCacheMatrix' allows the storage of an object (a matrix)in 'x' and and it also stores its inverse in 'MatInv'

makeCacheMatrix <- function(x = matrix()) {
MatInv <- NULL
set <- function(y){
x <<- y
MatInv <<- NULL
}
get <- function()x
Set_Inv <- function(solve) MatInv <<- solve
Set_Inv <- function() MatInv
list(set=set, get=get, Set_Inv=Set_Inv, Get_Inv=Get_Inv)
}

## 'cacheSolve' uses a cached value stored by 'makeCacheMatrix' (meaning 'MatInv') and to calculate its inverse

cacheSolve <- function(x, ...) {
MatInv <- x$Get_Inv()
if(!is.null(MatInv)) {
message("Getting cached data")
return(MatInv)
}
data <- x$get()
MatInv <- solve(data, ...)
x$Set_Inv()
MatInv       
## Return a matrix that is the inverse of 'x'
}
