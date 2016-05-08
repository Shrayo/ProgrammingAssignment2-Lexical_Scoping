## Put comments here that give an overall description of what your
## functions do

## Following function is used to create ad store a matrix in cache.

makeCacheMatrix <- function(x = matrix())
  
  {
    m<-NULL
    set<-function(y)
    {
      x<<-y
      m<<-NULL
    }
    get<-function() 
    {
      x
    }
    setmatrix<-function(solve) 
    {
      m<<- solve
    }
    getmatrix<-function() 
    {
      m
    }
    list(set=set, get=get,
         setmatrix=setmatrix,
         getmatrix=getmatrix)
  

}


## This function is used to check if the called matrix inverse exists. If yes, it prints the msg, or else, it computes the inverse
##In the end, the function returns the inverse of the input matrix

cacheSolve <- function(x, ...) 
  {
  m<-x$getmatrix()
  if(!is.null(m))
  {
    message("getting cached data")
    return(m)
  }
  matrix<-x$get()
  m<-solve(matrix, ...)
  x$setmatrix(m)
  m
  
}
