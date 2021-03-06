% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{jacobiTheta}
\alias{jacobiTheta}
\title{Jacobi theta function}
\usage{
jacobiTheta(z, tau, nn = 30L)
}
\arguments{
\item{z}{Complex number; the point in the complex plane to which the output
of the function is mapped}

\item{tau}{Complex number; the so-called half-period ratio, must have a
positive imaginary part}

\item{nn}{Integer; number of factors to be used when approximating the
triple product (default = 30)}
}
\value{
The value of the function for \code{z} and \code{tau}.
}
\description{
Approximation of "the" Jacobi theta function using the first \code{nn}
factors in its triple product version
}
\details{
This function approximates the Jacobi theta function theta(z; tau) which is
the sum of exp(pi*i*n^2*tau + 2*pi*i*n*z) for n in -Inf, Inf. It uses,
however, the function's triple product representation. See
\url{https://en.wikipedia.org/wiki/Theta_function} for details. This function
has been implemented in C++, but it is only slightly faster than well-crafted
R versions, because the calculation can be nicely vectorized in R.
}
\examples{
\donttest{
phasePortrait(jacobiTheta, moreArgs = list(tau = 1i/2-1/4),
pType = "p", xlim = c(-2, 2), ylim = c(-2, 2),
nCores = 1) # Max. two cores on CRAN, not a limit for your use
  \dontshow{
  # R CMD check: make sure any open connections are closed afterward
  foreach::registerDoSEQ()
  doParallel::stopImplicitCluster()
  }
}

\donttest{
phasePortrait(jacobiTheta, moreArgs = list(tau = 1i/2-1/2),
pType = "p", xlim = c(-2, 2), ylim = c(-2, 2),
nCores = 1)
  \dontshow{
  # R CMD check: make sure any open connections are closed afterward
  foreach::registerDoSEQ()
  doParallel::stopImplicitCluster()
  }
}

\donttest{
phasePortrait(jacobiTheta, moreArgs = list(tau = 1i/3+1/3),
pType = "p", xlim = c(-2, 2), ylim = c(-2, 2),
nCores = 1)
  \dontshow{
  # R CMD check: make sure any open connections are closed afterward
  foreach::registerDoSEQ()
  doParallel::stopImplicitCluster()
  }
}

\donttest{
phasePortrait(jacobiTheta, moreArgs = list(tau = 1i/4+1/2),
pType = "p", xlim = c(-2, 2), ylim = c(-2, 2),
nCores = 1)
  \dontshow{
  # R CMD check: make sure any open connections are closed afterward
  foreach::registerDoSEQ()
  doParallel::stopImplicitCluster()
  }
}


}
\seealso{
Other maths: 
\code{\link{blaschkeProd}()},
\code{\link{juliaNormal}()},
\code{\link{mandelbrot}()}
}
\concept{maths}
