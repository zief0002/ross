matrix.x <-
function(numstim) {
    
    ### Check that the number of stimuli is odd
    numstim <- ifelse(numstim%%2 == 0, numstim + 1, numstim)
    
    ### Compute the dimensions of the matrix
    numrow <- (numstim + 1)/2
    numcol <- numstim - 1
    matrix.x <- matrix(nrow = numrow, ncol = numcol)

	### Fill in the first and last rows of the matrix
	for (c in 1:numcol){
		ifelse(c%%2 == 1, matrix.x[1,c] <- 1, matrix.x[1,c] <- 1 +.5*c)
		ifelse(c%%2 == 1, matrix.x[numrow,c] <- 1, matrix.x[numrow,c] <- numrow+.5*c)
		}
	
	### Fill in the first two elements for each of the remaining rows
	for (r in 2:(numrow-1)){
		matrix.x[r,1] <- numstim - r + 2
		matrix.x[r,2] <- numstim - r + 2
	
		### Fill in the remaining elements of the matrix
		for (c in seq(4, numcol, by=2)){
			check <- matrix.x[r,c-2] + 1 
			ifelse(check%%numstim == 1, matrix.x[r,c] <- 2, matrix.x[r,c] <- check)
			matrix.x[r,c-1] <- matrix.x[r,c]
			}
		}
		
    matrix.x
}

