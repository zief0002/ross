`ross.ordering` <- function(x, paper = FALSE){
	
	## Compute number of stimuli
	numstim <- nrow(x)	
	
	## Coerce to characters
	x <- as.character(x[[1]])
	
	## Randomize the order of stimuli
	if(paper == FALSE) {x <- sample(x)}  
	
	## Balance the pairs of stimuli
	my.ordering <- balance.pairs(matrix.x(numstim), matrix.y(numstim), numstim)
	
	## Replace the dummy stimulus for even numbers of stimuli with NA
	my.ordering[my.ordering > numstim] <- NA
	
	## Remove any rows that included the dummy stimulus
	my.ordering <- na.omit(my.ordering)
		
	## Compute number of pairs of stimuli
	numpairs <- nrow(my.ordering)
	
	dummy.ordering <- my.ordering
	
	for (i in 1:numpairs){
		my.ordering[i, 1] <- x[dummy.ordering[i, 1]]
		my.ordering[i, 2] <- x[dummy.ordering[i, 2]]
		}
	
	## Name the columns in the data frame
			
	names(my.ordering) <- c("First Stimulus", "Second Stimulus")
	#return(my.ordering)
	
	############################################
	## The following will determine the blocking
	############################################
	
	#my.block <-c()
	
	## For odd number of stimuli
	if(numstim %% 2 == 1){
		
		## Compute number of blocks and number of stimuli per block
		numblock <- numstim
		numstim.block <- (numstim-1)/2
		
		## Write the block numbers in a variable called Block
		my.ordering$Block <- rep(1:numblock, rep(numstim.block, numblock))
		return(my.ordering)
		}  else{  ## For even number of stimuli
		
		
		## Compute number of blocks and number of stimuli per block
		numblock <- numstim - 1
		numstim.block <- (numstim)/2 
		
	
		## Write the block numbers in a variable called Block
		my.ordering$Block <- rep(1:numblock, rep(numstim.block, numblock))
		return(my.ordering)
		
		} ## End else statement
		
			
	## Add the block number to the data frame		
	my.ordering$Block <- factor(my.block)
	
	}
		



		
	