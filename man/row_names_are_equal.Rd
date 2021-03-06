% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/general_shadowcat_functions.R
\name{row_names_are_equal}
\alias{row_names_are_equal}
\title{Check row names}
\usage{
row_names_are_equal(row_names, list_of_matrices_to_check)
}
\arguments{
\item{row_names}{Character vector of row names to use as the standard.}

\item{list_of_matrices_to_check}{List containing the matrices for which the row names should be checked. NULL elements in the list are ignored.}
}
\value{
\code{TRUE} if the row names of all the matrices are equal to \code{row_names}, including the order; \code{FALSE} otherwise.
}
\description{
Check whether all matrices have row names equal to the standard.
}
\examples{
ShadowCAT:::row_names_are_equal(c("a", "b", "c"), 
                                list("matrix1" = matrix(1:3, 
                                                        ncol = 1, 
                                                        dimnames = list(c("a", "b", "c"), NULL)),
                                     "matrix2" = matrix(2:4, 
                                                        ncol = 1, 
                                                        dimnames = list(c("a", "b", "c"), NULL)),
                                     "matrix3" = matrix(3:5, 
                                                        ncol = 1, 
                                                        dimnames = list(c("a", "b", "c"), NULL)),
                                     "matrix4" = NULL))
ShadowCAT:::row_names_are_equal(c("a", "b", "c"), 
                                list("matrix1" = matrix(1:3, 
                                                        ncol = 1, 
                                                        dimnames = list(c("a", "b", "c"), NULL)),
                                     "matrix2" = matrix(2:4, 
                                                        ncol = 1, 
                                                        dimnames = list(c("a", "b", "c"), NULL)),
                                     "matrix3" = matrix(3:4, 
                                                        ncol = 1, 
                                                        dimnames = list(c("a", "b"), NULL)),
                                     "matrix4" = NULL))
ShadowCAT:::row_names_are_equal(c("a", "b", "c"), 
                                list("matrix1" = matrix(1:3, 
                                                        ncol = 1, 
                                                        dimnames = list(c("a", "b", "c"), NULL)),
                                     "matrix2" = matrix(2:4, 
                                                        ncol = 1, 
                                                        dimnames = list(c("a", "c", "b"), NULL)),
                                     "matrix3" = matrix(3:5, 
                                                        ncol = 1, 
                                                        dimnames = list(c("a", "b", "c"), NULL))))


\dontshow{
ShadowCAT:::row_names_are_equal(c("a", "b", "c"), list("matrix1" = matrix(1:3, ncol = 1, dimnames = list(c("a", "b", "c"), NULL)),
                                                                 "matrix2" = matrix(2:4, ncol = 1, dimnames = list(c("a", "b", "c"), NULL)),
                                                                 "matrix3" = matrix(3:5, ncol = 1, dimnames = list(c("a", "b", "c"), NULL)),
                                                                 "matrix4" = NULL)) == TRUE || stop("wrong")
ShadowCAT:::row_names_are_equal(c("a", "b", "c"), list("matrix1" = matrix(1:3, ncol = 1, dimnames = list(c("a", "b", "c"), NULL)),
                                                       "matrix2" = matrix(2:4, ncol = 1, dimnames = list(c("a", "b", "c"), NULL)),
                                                       "matrix3" = matrix(3:4, ncol = 1, dimnames = list(c("a", "b"), NULL)),
                                                       "matrix4" = NULL)) == FALSE || stop("wrong")
ShadowCAT:::row_names_are_equal(c("a", "b", "c"), list("matrix1" = matrix(1:3, ncol = 1, dimnames = list(c("a", "b", "c"), NULL)),
                                                       "matrix2" = matrix(2:4, ncol = 1, dimnames = list(c("a", "c", "b"), NULL)),
                                                       "matrix3" = matrix(3:5, ncol = 1, dimnames = list(c("a", "b", "c"), NULL)))) == FALSE || stop("wrong")
}
}

