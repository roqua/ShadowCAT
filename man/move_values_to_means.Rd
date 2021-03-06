% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/general_shadowcat_functions.R
\name{move_values_to_means}
\alias{move_values_to_means}
\title{Move values towards means}
\usage{
move_values_to_means(values, means, amount_change)
}
\arguments{
\item{values}{The vector with values to move to the mean.}

\item{means}{The vector with means to which values should be moved.}

\item{amount_change}{Vector with the amounts by which each value should be moved to its corresponding mean.}
}
\value{
\code{values} plus or minus \code{amount_change}, or \code{values} if \code{values} is equal to \code{means}.
}
\description{
Move a vector of values in the direction of a vector of means.
}
\examples{
ShadowCAT:::move_values_to_means(values = 1, means = 2, amount_change = .1)
ShadowCAT:::move_values_to_means(values = 3, means = 2, amount_change = .1)
ShadowCAT:::move_values_to_means(values = 2, means = 2, amount_change = .1)
ShadowCAT:::move_values_to_means(values = c(1, 2, 3), 
                                 means = c(1, 5, -1), 
                                 amount_change = rep(.1, 3))

\dontshow{
ShadowCAT:::move_values_to_means(values = 1, means = 2, amount_change = .1) == 1.1 || stop("wrong") 
ShadowCAT:::move_values_to_means(values = 3, means = 2, amount_change = .1) == 2.9 || stop("wrong")
ShadowCAT:::move_values_to_means(values = 2, means = 2, amount_change = .1) == 2 || stop("wrong")
all(ShadowCAT:::move_values_to_means(values = c(1, 2, 3), means = c(1, 5, -1), amount_change = rep(.1, 3)) == c(1, 2.1, 2.9)) || stop("wrong")
}
}

