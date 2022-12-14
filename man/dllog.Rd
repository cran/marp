% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dllog.R
\name{dllog}
\alias{dllog}
\title{Density function of Log-Logistics model}
\usage{
dllog(x, shape = 1, scale = 1, log = FALSE)
}
\arguments{
\item{x}{input data for Log-Logistics model}

\item{shape}{shape parameter of Log-Logistics model}

\item{scale}{scale parameter of Log-Logistics model}

\item{log}{logic function to determine whether log of logistics to be returned}
}
\value{
returns the density of the Log-Logistics model
}
\description{
Density function of Log-Logistics model
}
\examples{
x <- as.numeric(c(350., 450., 227., 352., 654.))
# set paramters
shape <- 5
scale <- 3
log <- FALSE
result_1 <- marp::dllog(x, shape, scale, log)

# alternatively, set log == TRUE
log <- TRUE
result_2 <- marp::dllog(x, shape, scale, log)

}
