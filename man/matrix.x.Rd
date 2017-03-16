\name{matrix.x}
\alias{matrix.x}

\title{Position Number for a Given Number of Stimuli}
\description{
Produces a matrix where the elements correspond to the position number of the first stimulus that should be presented in each pair of stimuli.
}
\usage{
matrix.x(numstim)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{numstim}{The number of stimuli}
}

\value{
Returns a matrix where the elements correspond to the position number of the first stimulus that should be presented in each pair of stimuli.
}

\references{
Davison, M. L. Zieffler, A. Cabrera, J. Karl, S. R. and Cohen, H. S. in press Automated Assembly of Optimally Spaced and Balanced Paired Comparisons: Controlling Order Effects. \emph{Behavioral Research Methods}. DOI 10.3758/s13428-011-0170-0

Cohen, H.S. and Davison, M.L. 1973 Jiffy-Scale: A FORTRAN IV Program for Generating Ross-Ordered Paired Comparisons. \emph{Behavioral Science}, \bold{18}, 1, 76.
 
Ross, R.T. 1934 Optimimum Orders for the Presentation of Pairs in the Method of Paired Comparisons. \emph{Journal of Educational Psychology}, \bold{25}, 5, 375--382.	
}

\author{Andrew Zieffler \email{zief002@umn.edu}, Stacy Karl \email{karlx028@umn.edu}, and Julio Cabrera \email{cabre031@umn.edu}}


\seealso{
\code{\link{matrix.y}}
}

\examples{
matrix.x(9)
}
