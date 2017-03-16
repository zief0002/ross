\name{ross.ordering}
\alias{ross.ordering}

\title{Ross Ordering}

\description{This function produces the maximally spaced, balanced presentation of pairs of stimuli. It also blocks the pairs of stimuli for use in a matrix sampling or inclomplete design.
}

\usage{
ross.ordering(x, paper = FALSE)
}

\arguments{
  \item{x}{
a vector of stimuli
}
  \item{paper}{
a logical value. If \code{paper=TRUE}, the stimuli will not be randomized so that the results in Davison, Zieffler, Cabrera, and Karl (in press) can be replicated. The default value is \code{paper=FALSE}.
}
}


\value{
A data frame is returned. The data frame includes the first and second stimulus to be presented in each pair of stimuli, and it also includes the block number for matrix sampling or incomplete designs.
}

\references{
Davison, M. L. Zieffler, A. Cabrera, J. Karl, S. R. and Cohen, H. S. in press Automated Assembly of Optimally Spaced and Balanced Paired Comparisons: Controlling Order Effects. \emph{Behavioral Research Methods}. DOI 10.3758/s13428-011-0170-0

Cohen, H.S. and Davison, M.L. 1973 Jiffy-Scale: A FORTRAN IV Program for Generating Ross-Ordered Paired Comparisons. \emph{Behavioral Science}, \bold{18}, 1, 76.
 
Ross, R.T. 1934 Optimimum Orders for the Presentation of Pairs in the Method of Paired Comparisons. \emph{Journal of Educational Psychology}, \bold{25}, 5, 375--382.	
}

\author{Andrew Zieffler \email{zief002@umn.edu}, Stacy Karl \email{karlx028@umn.edu}, and Julio Cabrera \email{cabre031@umn.edu}}


\seealso{
\code{\link{matrix.sampling}}, \code{\link{incomplete.design}}, \code{\link{big.nine}}, \code{\link{big.eight}}
}

\examples{
## Ross ordering of the Big Nine data set
## Reproduces Table 1 in Davison, Zieffler, Cabrera, and Karl (in press)
data(big.nine)
ross.ordering(big.nine, paper = TRUE)

## Ross ordering of the Big Eight data set
## Reproduces Table 2 in Davison, Zieffler, Cabrera, and Karl (in press)
data(big.eight)
ross.ordering(big.eight, paper = TRUE)

}

