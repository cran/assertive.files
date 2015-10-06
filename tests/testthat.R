library(testthat)
library(devtools)
library(assertive.files)

with_envvar(
  c(LANG = "en_US"),
  test_check("assertive.files")
)
