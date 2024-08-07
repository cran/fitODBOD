% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/COMPBin.R
\name{EstMLECOMPBin}
\alias{EstMLECOMPBin}
\title{Estimating the probability of success and v parameter for COM Poisson Binomial
Distribution}
\usage{
EstMLECOMPBin(x,freq,p,v,...)
}
\arguments{
\item{x}{vector of binomial random variables.}

\item{freq}{vector of frequencies.}

\item{p}{single value for probability of success.}

\item{v}{single value for v.}

\item{...}{mle2 function inputs except data and estimating parameter.}
}
\value{
\code{EstMLECOMPBin} here is used as a wrapper for the \code{mle2} function of \pkg{bbmle} package
therefore output is of class of mle2.
}
\description{
The function will estimate the probability of success and v parameter using the maximum log
likelihood method for the COM Poisson Binomial distribution when the binomial random
variables and corresponding frequencies are given.
}
\details{
\deqn{x = 0,1,2,...}
\deqn{freq \ge 0}
\deqn{0 < p < 1}
\deqn{-\infty < v < +\infty}

\strong{NOTE} : If input parameters are not in given domain conditions
necessary error messages will be provided to go further.
}
\examples{
No.D.D <- 0:7               #assigning the random variables
Obs.fre.1 <- c(47,54,43,40,40,41,39,95)     #assigning the corresponding frequencies

#estimating the parameters using maximum log likelihood value and assigning it
parameters <- EstMLECOMPBin(x=No.D.D,freq=Obs.fre.1,p=0.5,v=0.1)

bbmle::coef(parameters)           #extracting the parameters

}
\references{
\insertRef{borges2014poisson}{fitODBOD}
}
