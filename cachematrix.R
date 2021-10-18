Skip to content
Search or jump to…
Pull requests
Issues
Marketplace
Explore
 
@zhanomir 
zhanomir
/
clone
Public
1
00
Code
Issues
Pull requests
Actions
Projects
Wiki
Security
Insights
Settings
clone/cachematrix.R
@zhanomir
zhanomir Update cachematrix.R
Latest commit 317b686 1 minute ago
 History
 2 contributors
@zhanomir@rdpeng
60 lines (38 sloc)  925 Bytes
   
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
i<- NULL
        
 set<-function(){
 m<<- matrix
 i<<- NULL 
 }
   
 get<-function(){
 m
 }
    setInverse <- function(inverse) {
        i <<- inverse
    }       
 getInverse <- function() {
     
        i
    }


    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
      cacheSolve <- function(x, ...) {

   
    m <- x$getInverse()

  
    if( !is.null(m) ) {
            message("getting cached data")
            return(m)
    }

   
    data <- x$get()


    m <- solve(data) %*% data

 
    x$setInverse(m)

#get solved matrix
    m
}  
        
}
© 2021 GitHub, Inc.
Terms
Privacy
Security
Status
Docs
Contact GitHub
Pricing
API
Training
Blog
About
Loading complete
