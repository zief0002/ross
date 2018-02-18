\name{ross-package}
\alias{ross-package}
\alias{ross}
\docType{package}
\title{Ross Ordering}
\description{
To control order effects in questionnaires containing paired comparisons, Ross (1934) described an optimal ordering of the pairings. The functions in this package construct the optimally spaced, balanced ordering of pairings. They can also create
subsets of the pairs for either a matrix-sampling design or a fully incomplete design.
}

\details{
\tabular{ll}{
Package: \tab ross\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2011-11-27\cr
License: \tab GPL-2\cr
LazyLoad: \tab yes\cr
}
Please read the package vignette for information on the capabilities of the ross package. Feel free to contact me if there is a feature you would like to see added if it would complement the goals of the ross package.
}

\author{
Andrew Zieffler \email{zief002@umn.edu}, Stacy Karl \email{karlx028@umn.edu}, and Julio Cabrera \email{cabre031@umn.edu}

Maintainer: Andrew Zieffler \email{zief002@umn.edu}
}

\references{
Davison, M. L. Zieffler, A. Cabrera, J. Karl, S. R. and Cohen, H. S. in press Automated Assembly of Optimally Spaced and Balanced Paired Comparisons: Controlling Order Effects. \emph{Behavioral Research Methods}. DOI 10.3758/s13428-011-0170-0

Cohen, H.S. and Davison, M.L. 1973 Jiffy-Scale: A FORTRAN IV Program for Generating Ross-Ordered Paired Comparisons. \emph{Behavioral Science}, \bold{18}, 1, 76.
 
Ross, R.T. 1934 Optimimum Orders for the Presentation of Pairs in the Method of Paired Comparisons. \emph{Journal of Educational Psychology}, \bold{25}, 5, 375--382.
}

\keyword{ package }

\examples{
data(big.nine)
ross.ordering(big.nine, paper = TRUE)
matrix.sampling(big.nine, f = 2, paper = TRUE)
data(top.twenty)
incomplete.design(top.twenty, samp = 10)
}
