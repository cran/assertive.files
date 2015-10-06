#' @rdname is_empty_file
#' @export
assert_all_are_empty_files <- function(x, 
  severity = getOption("assertive.severity", "stop"))
{
  .xname <- get_name_in_parent(x)
  msg <- gettextf(
    "Some or all of the paths specified by %s are not empty files.", 
    .xname
  )
  assert_engine(
    is_empty_file, 
    x, 
    .xname = .xname,
    msg = msg, 
    severity = severity
  )
}

#' @rdname is_empty_file
#' @export
assert_any_are_empty_files <- function(x, 
  severity = getOption("assertive.severity", "stop"))
{
  .xname <- get_name_in_parent(x)
  msg <- gettextf(
    "None of the paths specified by %s are empty files.", 
    .xname
  )
  assert_engine(
    is_empty_file, 
    x, 
    .xname = .xname,
    msg = msg, 
    what = "any",
    severity = severity
  )
}

#' @rdname is_empty_file
#' @export
assert_all_are_non_empty_files <- function(x, 
  severity = getOption("assertive.severity", "stop"))
{
  .xname <- get_name_in_parent(x)
  msg <- gettextf(
    "Some or all of the paths specified by %s are not non-empty files.", 
    .xname
  )
  assert_engine(
    is_non_empty_file, 
    x, 
    .xname = .xname,
    msg = msg, 
    severity = severity
  )
}

#' @rdname is_empty_file
#' @export
assert_any_are_non_empty_files <- function(x, 
  severity = getOption("assertive.severity", "stop"))
{
  .xname <- get_name_in_parent(x)
  msg <- gettextf(
    "None of the paths specified by %s are non-empty files.", 
    .xname
  )
  assert_engine(
    is_non_empty_file, 
    x, 
    .xname = .xname,
    msg = msg, 
    what = "any",
    severity = severity
  )
}

