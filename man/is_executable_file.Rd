% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/assert-is-file.R, R/is-file.R
\name{assert_all_are_executable_files}
\alias{assert_all_are_executable_files}
\alias{assert_all_are_readable_files}
\alias{assert_all_are_writable_files}
\alias{assert_any_are_executable_files}
\alias{assert_any_are_readable_files}
\alias{assert_any_are_writable_files}
\alias{is_ex_file}
\alias{is_executable_file}
\alias{is_readable_file}
\alias{is_writable_file}
\title{Is the file accessible?}
\usage{
assert_all_are_executable_files(x, warn_about_windows = TRUE,
  severity = getOption("assertive.severity", "stop"))

assert_any_are_executable_files(x, warn_about_windows = TRUE,
  severity = getOption("assertive.severity", "stop"))

assert_all_are_readable_files(x, warn_about_windows = TRUE,
  severity = getOption("assertive.severity", "stop"))

assert_any_are_readable_files(x, warn_about_windows = TRUE,
  severity = getOption("assertive.severity", "stop"))

assert_all_are_writable_files(x, warn_about_windows = TRUE,
  severity = getOption("assertive.severity", "stop"))

assert_any_are_writable_files(x, warn_about_windows = TRUE,
  severity = getOption("assertive.severity", "stop"))

is_executable_file(x, warn_about_windows = TRUE,
  .xname = get_name_in_parent(x))

is_ex_file(x)

is_readable_file(x, warn_about_windows = TRUE,
  .xname = get_name_in_parent(x))

is_writable_file(x, warn_about_windows = TRUE,
  .xname = get_name_in_parent(x))
}
\arguments{
\item{x}{Input to check.}

\item{warn_about_windows}{Logical.  If \code{TRUE}, then calling the function
under Windows will throw a warning about the problems with 
\code{\link[base]{file.access}}.}

\item{severity}{How severe should the consequences of the assertion be?
Either \code{"stop"}, \code{"warning"}, \code{"message"}, or \code{"none"}.}

\item{.xname}{Not intended to be used directly.}
}
\value{
\code{is_executable_file} wraps \code{file.access}, showing
the names of the inputs in the answer.   \code{assert_is_executable_file} 
returns nothing but throws an error if \code{is_executable_file} returns
\code{FALSE}.
}
\description{
Checks to see if the input files can be executed/read/written to.
}
\examples{
files <- dir()
is_readable_file(files)
is_writable_file(files, warn_about_windows = FALSE)
is_executable_file(files, warn_about_windows = FALSE)
}
\seealso{
\code{\link[base]{file.access}}.
}

