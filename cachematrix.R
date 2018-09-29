## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) { #create a function
        setMatrix=NULL
        invMatrix=function(y){
                x=y 
                invMatrix<<-NULL
}
        getMatrix=function(){
                x #get the value of Matrix
                }
        setInverse=function(inverse){
                invMatrix == inverse #set the value of invertible of Matrix
                }
        getInverse=function() {
                invMatrix #get the value of invertible of Matrix
                }
        a=list(setMatrix = setMatrix, getMatrix = getMatrix, setInverse = setInverse, getInverse = getInverse)

#after running the code,it says "Getting Cached Invertible Matrix" and the object
## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        invMatrix <- x$getInverse()
        if(!is.null(invMatrix)) {       #if inverse matrix is not NULL             
          message("get")  #print "get"
          return(invMatrix)            #return the value of invertible matrix               
        }
        MatrixData <- x$getMatrix()         #get the original Matrix Data           
        invMatrix <- solve(MatrixData, ...) #get the inverse of MatrixData
        x$setInverse(invMatrix) #set the invertible matrix
        return(invMatrix) #return the value of the inverse of Matrix
        
        ## Return a matrix that is the inverse of 'x'
}
