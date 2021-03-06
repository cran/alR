% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kdeGaussMom.R
\name{kdeGaussMom}
\alias{kdeGaussMom}
\title{Non-central Gaussian KDE moments.}
\usage{
kdeGaussMom(n, mu, h)
}
\arguments{
\item{n}{The highest order of non-central moments saught.}

\item{mu}{A vector of data points on which the kernel density estimator is based.}

\item{h}{The kernel density estimator bandwidth.}
}
\value{
A vector of length \code{n} of non-central moments requested for a Gaussian kernel density estimator.
}
\description{
Calculate the non-central moments for a univariate Gaussian kernel density estimator.
}
\examples{
library(alR)
x <- rnorm(100)
h_x <- bw(x, type=-1)
kdeGaussMom(3, x, h_x)

}
