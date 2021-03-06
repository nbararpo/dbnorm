% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dbnorm.R
\name{profplotraw}
\alias{profplotraw}
\title{Profile Plot of Features (variables) in raw data}
\usage{
profplotraw(m)
}
\arguments{
\item{m}{A data frame in which rows define the independent experiments (samples) and columns the features (variables), with the batch level in the first column.}
}
\value{
Original dataset in \bold{csv} format together with the series of profile plot for the features (variables) in the sample sets analyzed in the entire experiment provided by the \emph{Scatter} plot,\emph{Violin} plot and \emph{pdf} plot compiled into \bold{PDF} file.\cr
}
\description{
It is a function in the \code{dbnorm} This function informs you about the presence of across batch signal drift or batch effect in the raw data determined by the shifted probability density function plots (\emph{pdf} plots) of features (variables) detected in an experiment.\cr
}
\details{
Zero and NA values are not allowed. Optionally missing value can be imputed by functions such as \code{emvf} or \code{emvd} Compiled in the \code{'dbnorm'} package. Input must be normalized and transformed prior.
}
\examples{
\dontrun{
batch<- rep(gl(5,10,labels = c(1:5),1))
y<- matrix(rnorm(5000),nrow=50)
m<-data.frame(batch,y)
profplotraw(m)
}
}
\keyword{data}
\keyword{plot}
\keyword{profile}
\keyword{raw}
