% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/make_param_set.R
\name{make_param_set}
\alias{make_param_set}
\title{Creates a ParamSet for the features of a data.table.}
\usage{
make_param_set(dt, lower = NULL, upper = NULL)
}
\arguments{
\item{dt}{(\code{data.table()})\cr
The data for the \link[paradox]{ParamSet}.}

\item{lower}{(numeric() | NULL)\cr
Vector of minimum values for numeric features. If not NULL, it should be named with the corresponding feature names.
If NULL (default) lower is taken for each numeric feature as its minimum value in \code{dt}.}

\item{upper}{(numeric() | NULL)\cr
Vector of maximum values for numeric features. If not NULL, it should be named with the corresponding feature names.
If NULL (default) upper is taken for each numeric feature as its maximum value in \code{dt}.}
}
\value{
A \link[paradox]{ParamSet} for the features of \code{dt}.
}
\description{
Creates a \link[paradox]{ParamSet} for the columns of \code{dt}. Depending on the class of a column, a different
\link[paradox]{Domain} is created:
\itemize{
\item \code{double}: \code{p_dbl()}
\item \code{integer}: \code{p_int()}
\item \code{character}: \code{p_fct()} (with unique values as levels)
\item \code{factor}: \code{p_fct()} (with factor levels as levels)
}
}
