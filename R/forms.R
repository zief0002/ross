forms <-
function(x){
	
  if(is.data.frame(x) == 1) mylength <- length(x[[1]]) else mylength <- x;   ## Determine number of stimuli

  
  if(mylength%%2!=0){  ## Odd number of stimuli
  	
    ideal <- (mylength - 1)/2
    my.factor <- c()
    j <- 1
    
    for(i in 1:ideal){
      if (ideal%%i==0){
        my.factor[j] <- i
        j <- j + 1
        i <- i + 1
        }  ## End if-statement
      i <- i + 1
      }  ## End for-loop
    
    cat(cat(cat(my.factor[1:(j-2)], sep=", "), "", ", or ", my.factor[length(my.factor)], sep=""), " forms are ideal.", sep="")
    
  }  ## End if-statement for odd number of stimuli
  
  else{  ## Even number of stimuli
  	
    ideal <- (mylength - 1)
    my.factor <- c()
    j <- 1
    
    for(i in 1:ideal){
      if (ideal%%i==0){
        my.factor[j] <- i
        j <- j + 1
        i <- i + 1
        } ## End if-statement
        
      i <- i + 1
      }  ## End for-loop
    
    if(length(my.factor)!=2){  ## Check if n-1 is prime
    	
      cat(cat(cat(my.factor[1:(j-2)], sep=", "), "", ", or ", my.factor[length(my.factor)], sep=""), " forms are ideal.", sep="")
      }  ## End if-statement for n-1 prime
    
    else{  ## Use for n-1 is prime
      
      ideal <- (mylength - 2)
      ideal2 <- mylength/2
      
      my.factor <- c()
      j <- 1
      for(i in 1:ideal){
      	
      if (ideal%%i==0 & ideal2%%i==0){
        my.factor[j] <- i
        j <- j + 1
        i <- i + 1
        } ## End if-statement
        
      i <- i + 1
      }  ## End for-loop
    
   
    	
      cat(cat(cat(my.factor[1:(j-2)], sep=", "), "", ", or ", my.factor[length(my.factor)], sep=""), " forms are ideal.", sep="")
      
      }  ## End else-statement for n-1 prime
    }  ## End else-statment for even number of stimuli
  
  

}  ## End function

