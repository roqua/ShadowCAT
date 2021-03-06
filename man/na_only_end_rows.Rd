% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/general_shadowcat_functions.R
\name{na_only_end_rows}
\alias{na_only_end_rows}
\title{Check \code{NA} pattern in matrix}
\usage{
na_only_end_rows(x)
}
\arguments{
\item{x}{Matrix.}
}
\value{
\code{TRUE} if there are only \code{NA}'s at the end of each row or no \code{NA} at all; \code{FALSE} otherwise.
}
\description{
Check whether \code{NA}'s exist only at the end of each row, that is, 
whether there are no values after the first \code{NA} in the row.
}
\examples{
ShadowCAT:::na_only_end_rows(matrix(c(1:3, NA, NA, 1:5, 1:4, NA), ncol = 5, byrow = TRUE))
ShadowCAT:::na_only_end_rows(matrix(c(1:3, NA, NA, 1:2, NA, 4:5, 1:4, NA), ncol = 5, byrow = TRUE))

\dontshow{
ShadowCAT:::na_only_end_rows(matrix(c(1:3, NA, NA, 1:5, 1:4, NA), ncol = 5, byrow = TRUE)) || stop("wrong");
ShadowCAT:::na_only_end_rows(matrix(c(1:3, NA, NA, 1:2, NA, 4:5, 1:4, NA), ncol = 5, byrow = TRUE))  == FALSE || stop("wrong")
}
}

