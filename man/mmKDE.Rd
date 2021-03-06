% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mmKDE.R
\name{mmKDE}
\alias{mmKDE}
\alias{mmKDE.default}
\alias{print.mmKDE}
\alias{summary.mmKDE}
\alias{print.summary.mmKDE}
\alias{mmKDE.formula}
\alias{predict.mmKDE}
\title{Moment matching for kernel density estimators.}
\usage{
mmKDE(formula, data = list(), xin, type, ...)

\method{mmKDE}{default}(formula, data = list(), xin, type, ...)

\method{print}{mmKDE}(x, ...)

\method{summary}{mmKDE}(object, ...)

\method{print}{summary.mmKDE}(x, ...)

\method{mmKDE}{formula}(formula, data = list(), xin, type, ...)

\method{predict}{mmKDE}(object, newdata = NULL, ...)
}
\arguments{
\item{formula}{An LHS ~ RHS formula, specifying the linear model to be estimated.}

\item{data}{A data.frame which contains the variables in \code{formula}.}

\item{xin}{Numeric vector of length equal to the number of independent variables, of initial values, for the parameters to be estimated.}

\item{type}{An integer specifying the bandwidth selection method used, see \code{\link{bw}}.}

\item{...}{Arguments to be passed on to the control argument of the \code{\link{optim}} function.}

\item{x}{An mmKDE object.}

\item{object}{An mmKDE object.}

\item{newdata}{The data on which the estimated model is to be fitted.}
}
\value{
A generic S3 object with class mmKDE.

mmKDE.default: A list with all components from \code{\link{optim}}, as well as:
\itemize{
\item intercept: Did the model contain an intercept TRUE/FALSE?
\item coefficients: A vector of estimated coefficients.
\item df: Degrees of freedom of the model.
\item error: The value of the objective function.
\item fitted.values: A vector of estimated values.
\item residuals: The residuals resulting from the fitted model.
\item call: The call to the function.
\item h_y: The KDE bandwidth estimator for the dependent variable.
\item h_X: The KDE bandwidth estimator for the independent variables, i.e. \eqn{\mathbf{X}\underline{\hat{\beta}}}.
\item MOMy: The first \eqn{n} non central moments of the dependent variable, where $\eqn{n} is the number of columns in the design matrix.
\item MOMX: The first \eqn{n} non central moments of the independent variables \eqn{\mathbf{X}\underline{\hat{\beta}}}, where $\eqn{n} is the number of columns in the design matrix.
}

summary.mmKDE: A list of class summary.mmKDE with the following components:
\itemize{
\item call: Original call to \code{mmKDE} function.
\item coefficients: A vector with parameter estimates.
\item moments: A matrix of the first \eqn{n} moments of the dependent and independent variables that were matched.  The final row corresponds to the estimated bandwidth parameters for each, i.e. \code{h_y} and \code{h_X}, respectively.
\item r.squared: The \eqn{r^{2}} coefficient.
\item adj.r.squared: The adjusted \eqn{r^{2}} coefficient.
\item sigma: The residual standard error.
\item df: Degrees of freedom for the model.
\item error: Value of the objective function.
\item residSum: Summary statistics for the distribution of the residuals.
}

print.summary.mmKDE: The object passed to the function is returned invisibly.

predict.mmKDE: A vector of predicted values resulting from the estimated model.
}
\description{
Estimate parameters of a linear model by matching the moments of kernel density estimators.
}
\section{Methods (by class)}{
\itemize{
\item \code{default}: default method for mmKDE.

\item \code{mmKDE}: print method for mmKDE.

\item \code{mmKDE}: summary method for mmKDE.

\item \code{summary.mmKDE}: print method for summary.mmKDE.

\item \code{formula}: formula method for mmKDE.

\item \code{mmKDE}: predict method for mmKDE.
}}

\examples{
x <- 1:10
y <- x+rnorm(10)
XIn <- lm(y~x)
mmKDE.default(y~x, xin=coef(XIn), type=-1)

u <- 11:20
v <- u+rnorm(10)
XIn <- lm(y~x)
mom <- mmKDE(y~x, xin=coef(XIn), type=-1)
predict(mom, newdata=data.frame(y=v, x=u))

}
