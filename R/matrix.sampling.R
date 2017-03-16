'matrix.sampling' <- function (x, paper=FALSE, f=2){
	require(plyr)
	
	## Carry out the Ross ordering to optimally space and balance the pairs of stimuli
	ro <- ross.ordering(x, paper)

	## Compute number of stimuli
	numstim <- nrow(x)
	
	## Coerce to characters
	x <- as.character(x[[1]])
	
	### For odd number of stimuli
	if(numstim%%2 == 1){
		
		numblock <- numstim
		numstim.block <- (numstim-1)/2
		
		Missing <- c()
		for(i in 1:numblock){
			
			# Examine stimuli in first block
			block <- ro[ro$Block == i, 1:2]
			temp <- c(block[[1]], block[[2]])
			
			# Compare the original set of stimuli with the stimuli in the block to
			# determine which is missing
			y <- setdiff(x, temp)
			
			Missing[i] <- y
			#ro$Missing[ro$Block == i] <- y
			
			}  ## End for-loop
		
		## Assign missing stimulus to the ro data frame based on block
		ro$Missing <- Missing[ro$Block]
		
		## Number of pairs from last block assigned to each form
		ppf <- (numstim - 1) / (2 * f)
		
		## Randomize the pairs of stimuli from the last block to forms
		if(paper == FALSE) {
			ro$Form[ro$Block == numblock] <- sample(rep(1:f, ppf))
			} else {
			ro$Form[ro$Block == numblock] <- c(1, 1, 2, 2)
			}
		
		## Assign all other blocks to forms
		for(i in 1:f){
			form.n <- c(na.omit(ro[ro$Form == i, ][[1]]), na.omit(ro[ro$Form == i, ][[2]]))
			ro$Form <- ifelse(ro$Missing %in% form.n,  i, ro$Form);
			}
		
		arrange(ro[ , -c(4)], Form)
		
		
		}  else{  ### For even number of stimuli
		
		numblock <- numstim - 1
		numstim.block <- (numstim)/2
		numpairs <- nrow(ro)
		
		## Make the first row the last row in the data frame

		ro <- ro[c(2:numpairs, 1), ]
		
		## Reblock the stimuli
		ro$Block <- rep(1:numblock, rep(numstim.block, numblock))
		#return(ro)
		
		## For (n-1) not prime
		#if(isprime(numstim - 1) == 0){
		
		#}
		
		## Number of pairs from last block assigned to each form
		ppf <- (numstim.block) / (f)
		
		## Randomize the pairs of stimuli from the last block to forms
		if(paper == FALSE) {
			ro$Form[ro$Block == numblock] <- sample(rep(1:f, ppf))
			} else {
			ro$Form[ro$Block == numblock] <- c(1, 1, 2, 2)
			}
		
		## Which blocks to which forms
		temp <- rep(1:f, rep(3,f))
		
		## Assign all other blocks to forms
		for(i in 1:(numblock-1)){
			ro$Form[ro$Block == i] <- temp[i];
			}
		
		arrange(ro, Form)
		
		
		
		
		}  ## End else-statement	for even number of stimuli

	}  ## End function

	#
