matrix.y <-
function (numstim) {
    
    ### Check that the number of stimuli is odd
    ifelse(numstim%%2 == 0, numstim1 <- numstim + 1, numstim1 <- numstim)
    
    ### Compute the dimensions of the matrix
    numrow <- (numstim1 + 1)/2
    numcol <- numstim1 - 1
    matrix.y <- matrix(nrow = numrow, ncol = numcol)

	for (r in 1:numrow){
		
		### Fill in the first element of each row of the matrix
		matrix.y[r,1] <- r + 1
		
		### Fill in the remaining elements of the matrix except the last column	
		for (c in seq(2, numcol-1, by=2)){
			matrix.y[r,c] <- matrix.y[r,c-1] + 1 
			matrix.y[r,c+1] <- matrix.y[r,c]
			}
			
		### Fill in the elements in the last column
		matrix.y[r,numcol] <- matrix.y[r,numcol-1] + 1	
		}
		
    matrix.y
}

