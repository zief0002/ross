incomplete.design <-
function (x, samp=1, f=2, paper=FALSE){

	### For odd number of stimuli
	if(nrow(x)%%2 == 1){
	
		## Carry out the matrix sampling on the pairs of stimuli
		ms <- matrix.sampling(x, paper, f)
		
		## Sample forms
		my.sample <- sample(1:f, size = samp)
		
		
		for (i in 1:length(my.sample)){
			print(ms[ms$Form == i, ])
			}  ## End for loop
		
	
		}  else{  ### For even number of stimuli
			
			## Carry out the Ross ordering to optimally space and balance the pairs of stimuli
			ro <- ross.ordering(x, paper)
			
			f <- max(ro$Block)
			
			## Sample blocks
			my.sample <- sample(1:f, size = samp)
			
			for (i in 1:length(my.sample)){
			print(ro[ro$Block == i, ])
			}  ## End for loop
			
			}  ## End else
}

