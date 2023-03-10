% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/remove_outliers.R
\name{remove_outliers}
\alias{remove_outliers}
\title{Remove outliers}
\usage{
remove_outliers(vec, coef = 1.5)
}
\arguments{
\item{vec}{A vector of numeric values}

\item{coef}{A number specifying the maximum distance from the 
inter-quartile range of \code{vec} for which values in \code{vec} are not
replaced with NA.}
}
\value{
A vector of numeric values of length \code{length(vec)} with all
 elements identical as in \code{vec} except that outliers are replaced by NA.
}
\description{
Removes outliers based on their distance from the inter-quartile range (IQR).
Excludes all points beyond \code{coef} times the IQR. The function uses the
command \code{boxplot.stats()} which uses the Tukey's method to identify the
outliers ranged above and below the \code{coef*}IQR.
}
\examples{
\dontrun{
vec <- remove_outliers( vec, coef=3 ) 
}
}
