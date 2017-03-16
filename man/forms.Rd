\name{forms}
\alias{forms}

\title{Compute Ideal Number of Forms}
\description{This function will compute the ideal number of forms for a given set or number of stimuli.}
\usage{
forms(x)
}

\arguments{
  \item{x}{either a vector of stimuli or an integer value}
}

\value{Text is printed to the screen indicating the ideal number of forms.}
\references{
Davison, M. L. Zieffler, A. Cabrera, J. Karl, S. R. and Cohen, H. S. in press Automated Assembly of Optimally Spaced and Balanced Paired Comparisons: Controlling Order Effects. \emph{Behavioral Research Methods}. DOI 10.3758/s13428-011-0170-0

Cohen, H.S. and Davison, M.L. 1973 Jiffy-Scale: A FORTRAN IV Program for Generating Ross-Ordered Paired Comparisons. \emph{Behavioral Science}, \bold{18}, 1, 76.
 
Ross, R.T. 1934 Optimimum Orders for the Presentation of Pairs in the Method of Paired Comparisons. \emph{Journal of Educational Psychology}, \bold{25}, 5, 375--382.	
}

\author{Andrew Zieffler \email{zief002@umn.edu}, Stacy Karl \email{karlx028@umn.edu}, and Julio Cabrera \email{cabre031@umn.edu}}

\examples{
## Find ideal number of forms for vector of stimuli
data(big.nine)
forms(big.nine)
data(big.eight)
forms(big.eight)
## Find ideal number of forms for number of stimuli
forms(8)
}

