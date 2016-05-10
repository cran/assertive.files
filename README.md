[![Project Status: Active - The project has reached a stable, usable state and is being actively developed.](http://www.repostatus.org/badges/0.1.0/active.svg)](http://www.repostatus.org/#active)
[![Is the package on CRAN?](http://www.r-pkg.org/badges/version/assertive.files)](http://www.r-pkg.org/pkg/assertive.files)
[![SemaphoreCI Build Status](https://semaphoreci.com/api/v1/projects/91eec22a-dd14-4c7e-bd09-dcc50309dad0/635121/badge.svg)](https://semaphoreci.com/richierocks/assertive-files)
[![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/69c6pjkrhoqe8j6p?svg=true)](https://ci.appveyor.com/project/richierocks/assertive-files)

# assertive.files

A set of predicates and assertions for checking the files of variables, such as length, names and attributes.  Most of the documentation is on the *[assertive](https://bitbucket.org/richierocks/assertive)* page.  End-users will usually want to use *assertive* directly.


### Installation

To install the stable version, type:

```{r}
install.packages("assertive.files")
```

To install the development version, you first need the *devtools* package.

```{r}
install.packages("devtools")
```

Then you can install the *assertive.files* package using

```{r}
library(devtools)
install_bitbucket("richierocks/assertive.files")
```

### Predicates

Functions for files:

`is_dir` checks if a path corresponds to a directory.

`is_empty_file` checks if a path corresponds to an empty file.
 
`is_existing_file` checks if a path corresponds to an existing file.
 
`is_readable_file`, `is_writable_file`, and `is_executable_file` check a file's permissions.  (Though they are based upon `base::file.access`, which sometimes gives unexpected results under Windows.)

`is_library` checks if a path corresponds to a library that R knows about.

Functions for connections:

`is_connection` checks if a variable is a connection.

`is_bzfile_connection`, `is_fifo_connection`, `is_file_connection`, `is_gzfile_connection`, `is_pipe_connection`, `is_socket_connection`, `is_terminal_connection`, `is_text_connection`, `is_unz_connection`, and `is_url_connection` check for these specific connection types.

`is_stderr`, `is_stdin`, and `is_stdout` check for these standard connections.

`is_incomplete_connection`, `is_open_connection`, `is_readable_connection`, and `is_writable_connection` check for these properties of connections.

### Assertions

Predicates that return a vector have two corresponding assertions.  For example,
`is_dir` has `assert_all_are_dirs` and `assert_any_are_dirs`.

Predicates returning a single logical value have one corresponding assertion.
For example, `is_stdin` has `assert_is_stdin`.