% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kappa4nlsShort.R
\name{kappa4nlsShort}
\alias{kappa4nlsShort}
\title{Sigmoidal curve fitting.}
\usage{
kappa4nlsShort(formula, data = list(), xin, ...)
}
\arguments{
\item{formula}{An LHS ~ RHS formula, specifying the linear model to be estimated.}

\item{data}{A data.frame which contains the variables in \code{formula}.}

\item{xin}{Numeric vector of length 3 containing initial values, for \eqn{\sigma}, \eqn{h}, and \eqn{k}.}

\item{...}{Arguments to be passed on to the outer control list of \code{\link{constrOptim.nl}}.}
}
\value{
kappa4nlsShort: A list with the following components:
\itemize{
\item coefficients: A vector of estimated coefficients.
\item error: The value of the objective function.
}
}
\description{
A framework for nonlinear least squares fitting of the four-parameter kappa sigmoidal function.
}
\details{
A shortened version of \code{\link{kappa4nls}}.
}
\examples{
k <- kappa4tc(-4, 0, 1)$par
x <- seq(qkappa4(0, 4, 0.4, -4, k), qkappa4(0.7, 4, 0.4, -4, k), length.out=100)
y <- sapply(x, function(i) pkappa4(i, 4, 0.4, -4, k))
kappa4nlsShort(y~x, xin=c(0.1, -3, -0.1))

}
