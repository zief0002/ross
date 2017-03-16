\name{matrix.sampling}
\alias{matrix.sampling}

\title{Matrix Sampling Design}
\description{
This function produces the forms, each including a subset of pairs of stimuli, for use in a matrix sampling design.
}

\usage{
matrix.sampling(x, paper = FALSE, f = 2)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
a vector of stimuli
}
  \item{paper}{
 logical value. If \code{paper=TRUE}, the stimuli will not be randomized so that the results in Davison, Zieffler, Cabrera, and Karl (in press) can be replicated. The default value is \code{paper=FALSE}.
}
  \item{f}{
an integer value specifying the number of forms to create. The default is \code{f=2}.
}
}


\value{
A data frame is returned. The data frame includes the first and second stimulus to be presented in each pair of stimuli. It also includes the block number for matrix sampling and the form to which the pair should be assigned.
}

\references{
Davison, M. L. Zieffler, A. Cabrera, J. Karl, S. R. and Cohen, H. S. in press Automated Assembly of Optimally Spaced and Balanced Paired Comparisons: Controlling Order Effects. \emph{Behavioral Research Methods}. DOI 10.3758/s13428-011-0170-0

Cohen, H.S. and Davison, M.L. 1973 Jiffy-Scale: A FORTRAN IV Program for Generating Ross-Ordered Paired Comparisons. \emph{Behavioral Science}, \bold{18}, 1, 76.
 
Ross, R.T. 1934 Optimimum Orders for the Presentation of Pairs in the Method of Paired Comparisons. \emph{Journal of Educational Psychology}, \bold{25}, 5, 375--382.	
}

\author{Andrew Zieffler \email{zief002@umn.edu}, Stacy Karl \email{karlx028@umn.edu}, and Julio Cabrera \email{cabre031@umn.edu}}


\seealso{
\code{\link{forms}}, \code{\link{ross.ordering}}, \code{\link{incomplete.design}}, \code{\link{big.nine}}, \code{\link{big.eight}}
}

\examples{
## To choose the ideal number of forms
## forms(9)

## Matrix sampling design of the Big Nine data set for 2 forms
## Reproduces Table 3 in Davison, Zieffler, Cabrera, and Karl (in press)
data(big.nine)
matrix.sampling(big.nine, f = 2, paper = TRUE)
}


