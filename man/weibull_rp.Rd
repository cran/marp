% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/weibull_rp.R
\name{weibull_rp}
\alias{weibull_rp}
\title{A function to fit Weibull renewal model #' @import weibull_logl}
\usage{
weibull_rp(data, t, m, y)
}
\arguments{
\item{data}{input inter-event times}

\item{t}{user-specified time intervals (used to compute hazard rate)}

\item{m}{the number of iterations in nlm}

\item{y}{user-specified time point (used to compute time-to-event probability)}
}
\value{
returns list of estimates after fitting Weibull renewal model
\describe{
\item{par1}{Estimated scale parameter of the Weibull model}
\item{par2}{Estimated shape parameter of the Weibull model}
\item{logL}{Negative log-likelihood}
\item{AIC}{Akaike information criterion (AIC)}
\item{BIC}{Bayesian information criterion (BIC)}
\item{mu_hat}{Estimated mean}
\item{pr_hat}{Estimated (logit) probabilities}
\item{haz_hat}{Estimated (log) hazard rates}
}
}
\description{
A function to fit Weibull renewal model #' @import weibull_logl
}
\examples{
set.seed(42)
data <-  rgamma(100,3,0.01)

# set some parameters
m = 10  # number of iterations for MLE optimization
t = seq(100, 200, by=10)  # time intervals
y = 304  # cut-off year for estimating probablity

# fit Weibull renewal model
result <- marp::weibull_rp(data, t, m, y)

# print result
cat("par1 = ", result$par1, "\n")
cat("par2 = ", result$par2, "\n")
cat("logL = ", result$logL, "\n")
cat("AIC = ", result$AIC, "\n")
cat("BIC = ", result$BIC, "\n")
cat("mu_hat = ", result$mu_hat, "\n")
cat("pr_hat = ", result$pr_hat, "\n")

}
