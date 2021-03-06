% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/terminate_test.R
\name{terminate_test}
\alias{terminate_test}
\title{Terminate test}
\usage{
terminate_test(number_answers, estimate, max_n, min_n = NULL,
  variance_target = NULL, cutoffs = NULL)
}
\arguments{
\item{number_answers}{Number of answers given.}

\item{estimate}{Vector with current theta estimate, with covariance matrix as its attribute.}

\item{max_n}{Test length at which testing should stop (even if target has not been reached yet in case of variance stopping rule).}

\item{min_n}{Minimum test length; \code{NULL} means no minimum test length.}

\item{variance_target}{Vector with the variance target for each dimension; \code{NULL} means no variance target.}

\item{cutoffs}{Matrix containing cut off values per dimension (columns) and test iteration (rows). First row contains cut off values for when no items have been
administered yet, second row for when one item has been administered, etc. If estimate + 3SE < cutoff for each dimension at a certain iteration, test stops; \code{NULL} means no cut off values.}
}
\value{
\code{TRUE} if test should stop, \code{FALSE} otherwise.
}
\description{
Control function to check if the test is completed.
}

