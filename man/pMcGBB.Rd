% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Gbeta1.R
\name{pMcGBB}
\alias{pMcGBB}
\title{McDonald Generalized Beta Binomial Distribution}
\usage{
pMcGBB(x,n,a,b,c)
}
\arguments{
\item{x}{vector of binomial random variables.}

\item{n}{single value for no of binomial trials.}

\item{a}{single value for shape parameter alpha representing as a.}

\item{b}{single value for shape parameter beta representing as b.}

\item{c}{single value for shape parameter gamma representing as c.}
}
\value{
The output of \code{pMcGBB} gives cumulative probability function values in vector form.
}
\description{
These functions provide the ability for generating probability function values and
cumulative probability function values for the McDonald Generalized Beta
Binomial Distribution.
}
\details{
Mixing Generalized Beta Type-1 Distribution with  Binomial distribution
the probability function value and cumulative probability function can be constructed
and are denoted below.

The cumulative probability function is the summation of probability function values.

\deqn{P_{McGBB}(x)= {n \choose x} \frac{1}{B(a,b)} (\sum_{j=0}^{n-x} (-1)^j {n-x \choose j} B(\frac{x}{c}+a+\frac{j}{c},b) ) }
\deqn{a,b,c > 0}

The mean, variance and over dispersion are denoted as
\deqn{E_{McGBB}[x]= n\frac{B(a+b,\frac{1}{c})}{B(a,\frac{1}{c})} }
\deqn{Var_{McGBB}[x]= n^2(\frac{B(a+b,\frac{2}{c})}{B(a,\frac{2}{c})}-(\frac{B(a+b,\frac{1}{c})}{B(a,\frac{1}{c})})^2) +n(\frac{B(a+b,\frac{1}{c})}{B(a,\frac{1}{c})}-\frac{B(a+b,\frac{2}{c})}{B(a,\frac{2}{c})}) }
\deqn{over dispersion= \frac{\frac{B(a+b,\frac{2}{c})}{B(a,\frac{2}{c})}-(\frac{B(a+b,\frac{1}{c})}{B(a,\frac{1}{c})})^2}{\frac{B(a+b,\frac{1}{c})}{B(a,\frac{1}{c})}-(\frac{B(a+b,\frac{1}{c})}{B(a,\frac{1}{c})})^2}}
\deqn{x = 0,1,2,...n}
\deqn{n = 1,2,3,...}
}
\examples{
#plotting the random variables and probability values
col <- rainbow(5)
a <- c(1,2,5,10,0.6)
plot(0,0,main="Mcdonald generalized beta-binomial probability function graph",
xlab="Binomial random variable",ylab="Probability function values",xlim = c(0,10),ylim = c(0,0.5))
for (i in 1:5)
{
lines(0:10,dMcGBB(0:10,10,a[i],2.5,a[i])$pdf,col = col[i],lwd=2.85)
points(0:10,dMcGBB(0:10,10,a[i],2.5,a[i])$pdf,col = col[i],pch=16)
}

dMcGBB(0:10,10,4,2,1)$pdf             #extracting the pdf values
dMcGBB(0:10,10,4,2,1)$mean            #extracting the mean
dMcGBB(0:10,10,4,2,1)$var             #extracting the variance
dMcGBB(0:10,10,4,2,1)$over.dis.para   #extracting the over dispersion value

#plotting the random variables and cumulative probability values
col <- rainbow(4)
a <- c(1,2,5,10)
plot(0,0,main="Cumulative probability function graph",xlab="Binomial random variable",
ylab="Cumulative probability function values",xlim = c(0,10),ylim = c(0,1))
for (i in 1:4)
{
lines(0:10,pMcGBB(0:10,10,a[i],a[i],2),col = col[i])
points(0:10,pMcGBB(0:10,10,a[i],a[i],2),col = col[i])
}

pMcGBB(0:10,10,4,2,1)       #acquiring the cumulative probability values

}
\references{
\insertRef{manoj2013mcdonald}{fitODBOD}
\insertRef{janiffer2014estimating}{fitODBOD}
\insertRef{roozegar2017mcdonald}{fitODBOD}
}
