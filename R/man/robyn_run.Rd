% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/model.R
\name{robyn_run}
\alias{robyn_run}
\alias{print.robyn_models}
\title{The major Robyn modelling function}
\usage{
robyn_run(
  InputCollect,
  dt_hyper_fixed = NULL,
  add_penalty_factor = FALSE,
  refresh = FALSE,
  seed = 123L,
  outputs = TRUE,
  quiet = FALSE,
  cores = NULL,
  trials = NULL,
  iterations = NULL,
  nevergrad_algo = "TwoPointsDE",
  intercept_sign = "non_negative",
  lambda_control = NULL,
  ...
)

\method{print}{robyn_models}(x, ...)
}
\arguments{
\item{InputCollect}{List. Contains all input parameters for the model.
Required when \code{robyn_object} is not provided.}

\item{dt_hyper_fixed}{data.frame. Only provide when loading old model results.
It consumes hyperparameters from saved csv \code{pareto_hyperparameters.csv}.}

\item{add_penalty_factor}{Boolean. Add penalty factor hyperparameters to
glmnet's penalty.factor to be optimized by nevergrad. Use with caution, because
this feature might add too much hyperparameter space and probably requires
more iterations to converge.}

\item{refresh}{Boolean. Set to \code{TRUE} when used in \code{robyn_refresh()}.}

\item{seed}{Integer. For reproducible results when running nevergrad.}

\item{outputs}{Boolean. Process results with \code{robyn_outputs()}?}

\item{quiet}{Boolean. Keep messages off?}

\item{cores}{Integer. Default to \code{parallel::detectCores()}}

\item{trials}{Integer. Recommended 5 for default
\code{nevergrad_algo = "TwoPointsDE"}}

\item{iterations}{Integer. Recommended 2000 for default
\code{nevergrad_algo = "TwoPointsDE"}}

\item{nevergrad_algo}{Character. Default to "TwoPointsDE". Options are
\code{c("DE","TwoPointsDE", "OnePlusOne", "DoubleFastGADiscreteOnePlusOne",
"DiscreteOnePlusOne", "PortfolioDiscreteOnePlusOne", "NaiveTBPSA",
"cGA", "RandomSearch")}.}

\item{intercept_sign}{Character. Choose one of "non_negative" (default) or
"unconstrained". By default, if intercept is negative, Robyn will drop intercept
and refit the model. Consider changing intercept_sign to "unconstrained" when
there are \code{context_vars} with large positive values.}

\item{lambda_control}{deprecated in v3.6.0}

\item{...}{Additional parameters passed to \code{robyn_outputs()}.}

\item{x}{robyn_models object}
}
\description{
The \code{robyn_run()} function consumes output from \code{robyn_input()},
runs the \code{robyn_mmm()} functions and plots and collects the result.
}
\examples{
\dontrun{
OutputCollect <- robyn_run(
  InputCollect = InputCollect,
  # cores = NULL,
  # add_penalty_factor = TRUE,
  iterations = 2000,
  trials = 2,
  outputs = FALSE
)
}
}
