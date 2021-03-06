% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/assert-is-file-size.R, R/is-file-size.R
\name{assert_all_are_empty_files}
\alias{assert_all_are_empty_files}
\alias{assert_all_are_non_empty_files}
\alias{assert_all_file_sizes_are_in_range}
\alias{assert_any_are_empty_files}
\alias{assert_any_are_non_empty_files}
\alias{assert_any_file_sizes_are_in_range}
\alias{is_empty_file}
\alias{is_file_size_in_range}
\alias{is_non_empty_file}
\title{Is a file too big or small?}
\usage{
assert_all_are_empty_files(x, severity = getOption("assertive.severity",
  "stop"))

assert_any_are_empty_files(x, severity = getOption("assertive.severity",
  "stop"))

assert_all_are_non_empty_files(x, severity = getOption("assertive.severity",
  "stop"))

assert_any_are_non_empty_files(x, severity = getOption("assertive.severity",
  "stop"))

assert_all_file_sizes_are_in_range(x, lower = 0, upper = Inf,
  lower_is_strict = FALSE, upper_is_strict = FALSE, na_ignore = FALSE,
  severity = getOption("assertive.severity", "stop"))

assert_any_file_sizes_are_in_range(x, lower = 0, upper = Inf,
  lower_is_strict = FALSE, upper_is_strict = FALSE,
  severity = getOption("assertive.severity", "stop"))

is_empty_file(x, .xname = get_name_in_parent(x))

is_non_empty_file(x, .xname = get_name_in_parent(x))

is_file_size_in_range(x, lower = 0, upper = Inf, lower_is_strict = FALSE,
  upper_is_strict = FALSE, .xname = get_name_in_parent(x))
}
\arguments{
\item{x}{Input to check.}

\item{severity}{How severe should the consequences of the assertion be?
Either \code{"stop"}, \code{"warning"}, \code{"message"}, or \code{"none"}.}

\item{lower}{Smallest file size allowed, in bytes.}

\item{upper}{Largest file size allowed, in bytes.}

\item{lower_is_strict}{If \code{TRUE}, the lower bound is open (strict) 
otherwise it is closed.}

\item{upper_is_strict}{If \code{TRUE}, the upper bound is open (strict)
otherwise it is closed.}

\item{na_ignore}{A logical value.  If \code{FALSE}, \code{NA} values
cause an error; otherwise they do not.  Like \code{na.rm} in many
stats package functions, except that the position of the failing
values does not change.}

\item{.xname}{Not intended to be used directly.}
}
\value{
\code{is_empty_file} wraps \code{file.info}, retuning \code{TRUE} 
when the input is a file that exists with size zero.  
\code{assert_*_are_empty_files} return nothing but throws an error if 
\code{is_empty_file} returns \code{FALSE}.
}
\description{
Checks to see if a file is within a given size range.
}
\examples{
tf <- tempfile()
file.create(tf)
is_empty_file(tf)
cat("some stuff", file = tf)
is_non_empty_file(tf)
assertive.base::dont_stop(assert_all_file_sizes_are_in_range(tf, lower = 100))
unlink(tf)  
}
\seealso{
\code{\link[base]{file.info}}.
}

