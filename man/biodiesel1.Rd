% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/biodiesel1-data.R
\docType{data}
\name{biodiesel1}
\alias{biodiesel1}
\title{Data on the Measurement of the oxidative stability of biodiesel.}
\format{A \code{data.frame} with three variables:
\describe{
\item{x}{The time measured in hours.}
\item{y}{The conductivity value measured in S/cm.}
\item{S60}{A logical indicator giving a 60\% split for validation purposes.}
}}
\usage{
data(biodiesel1)
}
\description{
Data from an experiment at 0.33\%, 0\%, and 0.67\% concentrations of antioxidants Orox PK, Naugard P and Anox
20 respectively, for measuring the oxidative stability of biodiesel.  5770 measurements were recorded.
The experiment was conducted by Isbe van der Westhuizen en Yong Fah Mian using equipment from the CSIR, and was
 sponsored by Walter Focke from the Institute of Applied Materials, at the University of Pretoria.
}
\examples{
library(alR)
str(biodiesel1)
summary(biodiesel1)
plot(y~x, data=biodiesel1)
}
\keyword{datasets}
