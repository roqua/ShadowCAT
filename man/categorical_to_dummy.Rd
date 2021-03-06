% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/general_shadowcat_functions.R
\name{categorical_to_dummy}
\alias{categorical_to_dummy}
\title{Transform categorical vector into dummy variables}
\usage{
categorical_to_dummy(x)
}
\arguments{
\item{x}{Categorical vector to be transformed into dummy variables.}
}
\value{
Matrix containing the dummy variables.
}
\description{
Transform categorical vector into dummy variables, with number of dummy
variables equal to the number of unique values in the categorical vector.
}
\examples{
x <- rep(c("a", "b", "c"), 3)
ShadowCAT:::categorical_to_dummy(x)
\dontshow{
all(ShadowCAT:::categorical_to_dummy(x)[1,] == rep(c(1, 0, 0), 3)) || stop("wrong")
}
}

