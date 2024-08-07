% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/BetaCorrBin.R
\name{EstMLEBetaCorrBin}
\alias{EstMLEBetaCorrBin}
\title{Estimating the covariance, alpha and beta parameter values for Beta-Correlated Binomial
Distribution}
\usage{
EstMLEBetaCorrBin(x,freq,cov,a,b,...)
}
\arguments{
\item{x}{vector of binomial random variables.}

\item{freq}{vector of frequencies.}

\item{cov}{single value for covariance.}

\item{a}{single value for alpha parameter.}

\item{b}{single value for beta parameter.}

\item{...}{mle2 function inputs except data and estimating parameter.}
}
\value{
\code{EstMLEBetaCorrBin} here is used as a wrapper for the \code{mle2} function of \pkg{bbmle} package
therefore output is of class of mle2.
}
\description{
The function will estimate the covariance, alpha and beta parameter values using the maximum log
likelihood method for the Beta-Correlated Binomial distribution when the binomial random
variables and corresponding frequencies are given.
}
\details{
\deqn{x = 0,1,2,...}
\deqn{freq \ge 0}
\deqn{-\infty < cov < +\infty}
\deqn{0 < a,b}

\strong{NOTE} : If input parameters are not in given domain conditions
necessary error messages will be provided to go further.
}
\examples{
No.D.D <- 0:7               #assigning the random variables
Obs.fre.1 <- c(47,54,43,40,40,41,39,95)     #assigning the corresponding frequencies

#estimating the parameters using maximum log likelihood value and assigning it
parameters <- EstMLEBetaCorrBin(x=No.D.D,freq=Obs.fre.1,cov=0.0050,a=10,b=10)

bbmle::coef(parameters)           #extracting the parameters

}
\references{
\insertRef{paul1985three}{fitODBOD}
}
\seealso{
\code{\link[bbmle]{mle2}}
}
