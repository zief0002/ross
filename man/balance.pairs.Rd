\name{balance.pairs}
\alias{balance.pairs}

\title{Balance the Pairs of Stimuli}
\description{This function balances the pairs of stimuli so that each stimulus appears equally often as the first or second member of a pair.}

\usage{
balance.pairs(matrix.x, matrix.y, numstim)
}

\arguments{
  \item{matrix.x}{
A matrix where the elements correspond to the ordinal position of the stimulus presented first in each pair
}
  \item{matrix.y}{
A matrix where the elements correspond to the ordinal position of the stimulus presented second in each pair
}
  \item{numstim}{
The number of stimuli
}
}

\details{
This function is called in the \code{ross.ordering}, \code{matrix.sampling} and \code{incomplete.design} functions.
}

\value{
A data frame of the ordinal positions for the balanced pairs of stimuli.
}

\references{
Davison, M. L. Zieffler, A. Cabrera, J. Karl, S. R. and Cohen, H. S. in press Automated Assembly of Optimally Spaced and Balanced Paired Comparisons: Controlling Order Effects. \emph{Behavioral Research Methods}. DOI 10.3758/s13428-011-0170-0

Cohen, H.S. and Davison, M.L. 1973 Jiffy-Scale: A FORTRAN IV Program for Generating Ross-Ordered Paired Comparisons. \emph{Behavioral Science}, \bold{18}, 1, 76.
 
Ross, R.T. 1934 Optimimum Orders for the Presentation of Pairs in the Method of Paired Comparisons. \emph{Journal of Educational Psychology}, \bold{25}, 5, 375--382.	

}

\author{
Andrew Zieffler \email{zief002@umn.edu}, Stacy Karl \email{karlx028@umn.edu}, and Julio Cabrera \email{cabre031@umn.edu}
}

\seealso{
\code{\link{matrix.x}}, \code{\link{matrix.y}}
}

\examples{
balance.pairs(matrix.x(9), matrix.y(9), 9)
}


