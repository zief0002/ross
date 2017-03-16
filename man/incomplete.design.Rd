\name{incomplete.design}
\alias{incomplete.design}

\title{Incomplete Design}
\description{
This function produces the subset of pairs of stimuli for use in an incomplete design.
}

\usage{
incomplete.design(x, samp = 1, f = 2, paper = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
a vector of stimuli
}
  \item{samp}{
an integer value specifying the number of forms to sample (for odd number of stimuli) or the number of blocks to sample (for even number of stimuli). The default is \code{samp=1}.

}
  \item{f}{
an integer value specifying the number of forms from which the sampling occurs. This is only needed for an odd number of stimuli. The default is \code{f=2}.
}
  \item{paper}{
logical value. If \code{paper=TRUE}, the stimuli will not be randomized so that the results in Davison, Zieffler, Cabrera, and Karl (in press) can be replicated. The default value is \code{paper=FALSE}.
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
\code{\link{forms}}, \code{\link{ross.ordering}}, \code{\link{matrix.sampling}}, \code{\link{big.nine}}, \code{\link{big.eight}}
}

\examples{
## Choose stimuli for an incomplete design for nine stimuli.
## The function will sample 1 form from the 2 created
data(big.nine)
incomplete.design(big.nine, samp = 1, f = 2, paper = TRUE)

## Choose stimuli for an incomplete design for eight stimuli.
## The function will sample 4 blocks from the 7 possible blocks
data(big.eight)
incomplete.design(big.eight, samp = 4)

## Choose stimuli for an incomplete design for 20 stimuli.
## The function will sample 10 blocks from the 19 possible blocks
data(top.twenty)
incomplete.design(top.twenty, samp = 10)
}
