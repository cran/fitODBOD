% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Gamma.R
\name{pGammaBin}
\alias{pGammaBin}
\title{Gamma Binomial Distribution}
\usage{
pGammaBin(x,n,c,l)
}
\arguments{
\item{x}{vector of binomial random variables.}

\item{n}{single value for no of binomial trials.}

\item{c}{single value for shape parameter c.}

\item{l}{single value for shape parameter l.}
}
\value{
The output of \code{pGammaBin} gives cumulative probability  values in vector form.
}
\description{
These functions provide the ability for generating probability function values and
cumulative probability function values for the Gamma Binomial Distribution.
}
\details{
Mixing Gamma distribution with Binomial distribution will create the the Gamma Binomial
distribution. The probability function and cumulative probability function can be
constructed and are denoted below.

The cumulative probability function is the summation of probability function values.

\deqn{P_{GammaBin}[x]= {n \choose x} \sum_{j=0}^{n-x} {n-x \choose j} (-1)^j (\frac{c}{c+x+j})^l }
\deqn{c,l > 0}
\deqn{x = 0,1,2,...,n}
\deqn{n = 1,2,3,...}

The mean, variance and over dispersion are denoted as
\deqn{E_{GammaBin}[x] = (\frac{c}{c+1})^l}
\deqn{Var_{GammaBin}[x] = n^2[(\frac{c}{c+2})^l - (\frac{c}{c+1})^{2l}] + n(\frac{c}{c+1})^l{1-)(\frac{c+1}{c+2})^l}}
\deqn{over dispersion= \frac{(\frac{c}{c+2})^l - (\frac{c}{c+1})^{2l}}{(\frac{c}{c+1})^l[1-(\frac{c}{c+1})^l]}}
}
\examples{
#plotting the random variables and probability values
col <- rainbow(5)
a <- c(1,2,5,10,0.2)
plot(0,0,main="Gamma-binomial probability function graph",xlab="Binomial random variable",
ylab="Probability function values",xlim = c(0,10),ylim = c(0,0.5))
for (i in 1:5)
{
lines(0:10,dGammaBin(0:10,10,a[i],a[i])$pdf,col = col[i],lwd=2.85)
points(0:10,dGammaBin(0:10,10,a[i],a[i])$pdf,col = col[i],pch=16)
}

dGammaBin(0:10,10,4,.2)$pdf    #extracting the pdf values
dGammaBin(0:10,10,4,.2)$mean   #extracting the mean
dGammaBin(0:10,10,4,.2)$var    #extracting the variance
dGammaBin(0:10,10,4,.2)$over.dis.para  #extracting the over dispersion value

#plotting the random variables and cumulative probability values
col <- rainbow(4)
a <- c(1,2,5,10)
plot(0,0,main="Cumulative probability function graph",xlab="Binomial random variable",
ylab="Cumulative probability function values",xlim = c(0,10),ylim = c(0,1))
for (i in 1:4)
{
lines(0:10,pGammaBin(0:10,10,a[i],a[i]),col = col[i])
points(0:10,pGammaBin(0:10,10,a[i],a[i]),col = col[i])
}

pGammaBin(0:10,10,4,.2)   #acquiring the cumulative probability values

}
\references{
\insertRef{grassia1977family}{fitODBOD}
}
