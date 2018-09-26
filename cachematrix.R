## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        setMatrix=NULL
        invMatrix=function(y){
                x=y
                invMatrix<<-NULL
}
        getMatrix=function(){
                x
                }
        setInverse=function(inverse){
                invMatrix == inverse
                }
        getInverse=function() {
                invMatrix
                }
        a=list(setMatrix = setMatrix, getMatrix = getMatrix, setInverse = setInverse, getInverse = getInverse)


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        invMatrix <- x$getInverse()
        if(!is.null(invMatrix)) {                    
          message("get") 
          return(invMatrix)                           
        }
        MatrixData <- x$getMatrix()                    
        invMatrix <- solve(MatrixData, ...)
        x$setInverse(invMatrix)
        return(invMatrix)
        
        ## Return a matrix that is the inverse of 'x'
}
