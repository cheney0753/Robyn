% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/convergence.R
\name{robyn_converge}
\alias{robyn_converge}
\title{Check model convergence}
\usage{
robyn_converge(OutputModels, n_cuts = 20, sd_qtref = 3, med_lowb = 3, ...)
}
\arguments{
\item{OutputModels}{List. Output from \code{robyn_run()}}

\item{n_cuts}{Integer. Default to 20 (5% cuts). Convergence is calculated
on using first and last quantile cuts. By default, criteria 1: last
quantile's sd < first 3 quantiles' mean sd. Criteria 2: last quantile's
median < first quantile's median - 3 * first 3 quantiles' mean sd. Both
have to be satisfied to consider convergence.}

\item{sd_qtref}{Integer. Reference quantile of the error convergence rule
for standard deviation. Defaults to 3. Error convergence rule for sd is
defined as by default: last quantile's sd < first 3 quantiles' mean sd.}

\item{med_lowb}{Integer. Lower bound distance of the error convergence rule
for median. Default to 3. Error convergence rule for median is defined as
by default: last quantile's median < first quantile's median - 3 * first 3
quantiles' mean sd.}

\item{...}{Additional parameters}
}
\description{
The \code{robyn_converge()} function consumes output from \code{robyn_run()}
and calculate convergence status and output convergence plots.
}
\examples{
\dontrun{
OutputModels <- robyn_converge(
  OutputModels = OutputModels,
  n_cuts = 20,
  sd_qtref = 3,
  med_lowb = 3
)
}
}
