'balance.pairs' <-
function (matrix.x, matrix.y, numstim){
	
	### Create all pairs of stimuli by pairing the elements of X and Y
	
	pairing1 <- as.vector(matrix.x)
	pairing2 <- as.vector(matrix.y)
	pair <- cbind(pairing1, pairing2)
	
	### Is the number of stimuli even? If so add 1 to make the number of stimuli odd
	
	ifelse(numstim%%2==0, numstim1 <- numstim+1, numstim1 <- numstim)		
	numstim2 <- numstim1 + 1
	
	### Even number of stimuli --- Create pairs that are maximally spaced
	
	if(numstim%%2==0){
		
		### Omit pairs of stimuli that are created using the elements from the even numbered columns in the last row
		
		for(r in 1:length(pairing1)){
						
			if(r%%numstim2==0){
			pair[r,] <- NA
            }
		
		pre.ross.ordering <- data.frame(na.omit (pair))
		}

		### Balance the maximally spaced pairs of stimuli
		### k1 is the number of blocks that contain k2 pair of stimuli that need to be reversed
		
		k1 <- (numstim1-1)/2 - 1
		k2 <- (numstim1 + 1)/2
		irow <- 0

		### Locate the first pair of stimuli in the blocks that need to be reversed
		
		for(i in 1:k1){
		irow <- irow + (numstim1 - 1)/2

			### Reverse the stimuli in each block that contains k2 pairs of stimuli
			
			for(j in 1:k2){
			irow <- irow + 1
			temp <-pre.ross.ordering[irow,1]
			pre.ross.ordering[irow,1] <- pre.ross.ordering[irow,2]
			pre.ross.ordering[irow,2] <- temp
			}

		}

		irow <- length(pre.ross.ordering$pairing1) - k2 + 1

			### Reverse the stimuli in pairs if either stimulus value is 1 for the [(n-1)^2/2]th pair
			
			if(pre.ross.ordering[irow,1]==1 || pre.ross.ordering[irow,2]==1) {
			temp <- pre.ross.ordering[irow,1]
			pre.ross.ordering[irow,1] <- pre.ross.ordering[irow,2]
			pre.ross.ordering[irow,2] <- temp
			pre.ross.ordering <- pre.ross.ordering
			}

		### Omit pairs of stimuli that include any stimulus value greater than the number of stimuli
		
		#pro2 <- replace(pre.ross.ordering, pre.ross.ordering == ((numstim+4)/2), NA)
		#pre.ross.ordering2 <-data.frame(na.omit (pro2))
		#pre.ross.ordering2

}

	### Odd number of stimuli --- Create pairs that are maximally spaced
               
	else{

		for(r in 1:length(pairing1)){
			
			### Omit pairs of stimuli that are created using the elements from the even numbered columns in the last row
			
			if(r%%numstim2==0){
			pair[r,] <- NA
			}

		pre.ross.ordering <- data.frame(na.omit (pair))
		}

	### Balance the maximally spaced pairs of stimuli
	### k1 is the number of blocks that contain k2 pair of stimuli that need to be reversed
	
	k1 <- (numstim1-1)/2 - 1
	k2 <- (numstim1 + 1)/2
	irow <- 0

	### Locate the first pair of stimuli in the blocks that need to be reversed
	
	for(i in 1:k1){
	irow <- irow + (numstim - 1)/2

		### Reverse the stimuli in each block that contains k2 pairs of stimuli
		
		for(j in 1:k2){
		irow <- irow + 1
		temp <-pre.ross.ordering[irow,1]
		pre.ross.ordering[irow,1] <- pre.ross.ordering[irow,2]
		pre.ross.ordering[irow,2] <- temp
		}

	}

	irow <- length(pre.ross.ordering$pairing1) - k2 + 1

		### Reverse the stimuli in pairs if either stimulus value is 1 for the [(n-1)^2/2]th pair
		
		if(pre.ross.ordering[irow,1]==1 || pre.ross.ordering[irow,2]==1) {
		temp <- pre.ross.ordering[irow,1]
		pre.ross.ordering[irow,1] <- pre.ross.ordering[irow,2]
		pre.ross.ordering[irow,2] <- temp
		pre.ross.ordering
		}
		
	}

}

