% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mmn.R
\name{summary.citommn}
\alias{summary.citommn}
\title{Summarize a fitted MMN model}
\usage{
\method{summary}{citommn}(object, ...)
}
\arguments{
\item{object}{A model created by \code{\link{mmn}}.}

\item{...}{Additional arguments (currently not used).}
}
\value{
The original model object \code{object}, returned invisibly.
}
\description{
This function provides a summary of a Multi-Modal Neural Network (MMN) model created using the \code{\link{mmn}} function. It currently replicates the output of the \code{\link{print.citommn}} method.
}
