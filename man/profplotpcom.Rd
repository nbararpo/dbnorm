% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dbnorm.R
\name{profplotpcom}
\alias{profplotpcom}
\title{Profile Plot of Features (variables) in corrected data via  Parametric ComBat}
\usage{
profplotpcom(m)
}
\arguments{
\item{m}{A data frame in which rows define the independent experiments (samples) and columns the features (variables), with the batch in the first column.}
}
\value{
Original and adjusted datasets in \bold{csv} format together with the series of profile plot for the features(variables) in the sample sets provided by the \emph{Scatter} plot,\emph{Violin} plot and \emph{pdf} plot compiled into a \bold{PDF} file.
}
\description{
It is a function in the \code{dbnorm}, a package in R. This function allows users to adjust the data for batch effect using Parametric Empirical Bayes approach ( see "ComBat" in "sva", a package in bioconductor ). \emph{profplotpcom} informs users about the presence of batch effect or changes in the profile of detected features (variables) in the corrected data, determined by the shifted probability density function plots (\emph{pdf} plots).\cr
}
\details{
Zero and NA values are not allowed. Optionally missing value can be imputed by the functions such as \code{emvf} and/ or \code{emvd} implemented in the \code{'dbnorm'}. Input must be normalized and transformed prior.
}
\examples{
\dontrun{
batch<- rep(gl(2,3,labels=(1:2)),2)
y<- matrix(rnorm(6000), nrow=12)
m<- data.frame (batch,y)
profplotpcom(m)
}
}
\references{
Johnson et al., (2007) < DOI:10.1093/biostatistics/kxj037 > \emph{http://www.ncbi.nlm.nih.gov/pubmed/16632515}\cr
Leek et al., (2012) < DOI:10.1093/bioinformatics/bts034> \emph{https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3307112/}
}
\keyword{ComBat}
\keyword{Parametric}
\keyword{and}
\keyword{plot}
\keyword{profile}
