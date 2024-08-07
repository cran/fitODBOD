% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Beta.R
\name{NegLLBetaBin}
\alias{NegLLBetaBin}
\title{Negative Log Likelihood value of Beta-Binomial Distribution}
\usage{
NegLLBetaBin(x,freq,a,b)
}
\arguments{
\item{x}{vector of binomial random variables.}

\item{freq}{vector of frequencies.}

\item{a}{single value for shape parameter alpha representing as a.}

\item{b}{single value for shape parameter beta representing as b.}
}
\value{
The output of \code{NegLLBetaBin} will produce a single numeric value.
}
\description{
This function will calculate the Negative Log Likelihood value when the vector of binomial random
variables and vector of corresponding frequencies are given with the shape parameters a and b.
}
\details{
\deqn{0 < a,b }
\deqn{freq \ge 0}
\deqn{x = 0,1,2,...}

\strong{NOTE} : If input parameters are not in given domain conditions necessary error
messages will be provided to go further.
}
\examples{
No.D.D <- 0:7       #assigning the random variables
Obs.fre.1 <- c(47,54,43,40,40,41,39,95)   #assigning the corresponding frequencies

NegLLBetaBin(No.D.D,Obs.fre.1,.3,.4)   #acquiring the negative log likelihood value

}
\references{
\insertRef{young2008pooling}{fitODBOD}
\insertRef{trenkler1996continuous}{fitODBOD}
\insertRef{hughes1993using}{fitODBOD}
}
