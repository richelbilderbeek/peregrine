# `peregrine`

Branch    |[![Travis CI logo](pics/TravisCI.png)](https://travis-ci.org)                                                                            |[![Codecov logo](pics/Codecov.png)](https://www.codecov.io)
----------|-----------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------
`master`  |[![Build Status](https://travis-ci.org/richelbilderbeek/peregrine.svg?branch=master)](https://travis-ci.org/richelbilderbeek/peregrine)  |[![codecov.io](https://codecov.io/github/richelbilderbeek/peregrine/coverage.svg?branch=master)](https://codecov.io/github/richelbilderbeek/peregrine?branch=master)
`develop` |[![Build Status](https://travis-ci.org/richelbilderbeek/peregrine.svg?branch=develop)](https://travis-ci.org/richelbilderbeek/peregrine) |[![codecov.io](https://codecov.io/github/richelbilderbeek/peregrine/coverage.svg?branch=develop)](https://codecov.io/github/richelbilderbeek/peregrine?branch=develop)
`giovanni`|[![Build Status](https://travis-ci.org/richelbilderbeek/peregrine.svg?branch=giovanni)](https://travis-ci.org/richelbilderbeek/peregrine)|[![codecov.io](https://codecov.io/github/richelbilderbeek/peregrine/coverage.svg?branch=giovanni)](https://codecov.io/github/richelbilderbeek/peregrine?branch=giovanni)
`richel`  |[![Build Status](https://travis-ci.org/richelbilderbeek/peregrine.svg?branch=richel)](https://travis-ci.org/richelbilderbeek/peregrine)  |[![codecov.io](https://codecov.io/github/richelbilderbeek/peregrine/coverage.svg?branch=richel)](https://codecov.io/github/richelbilderbeek/peregrine?branch=richel)

![Peregrine falcon, by Christopher Watson](pics/peregrine_falcon.jpg)

`peregrine` is:

 * [A collection of notes](doc/README.md) on the Groningen Peregrine computer cluster
 * [A collection of scripts](scripts/README.md) for the Groningen Peregrine computer cluster
 * An R package for some Peregrine functions
 * Some presentations on the Groningen Peregrine computer cluster (see below)

## Videos

 * How to run an R script on Peregrine [download (.ogv)](http://richelbilderbeek.nl/peregrine_call_r_script.ogv) [YouTube](https://youtu.be/Xf8IZwR9T8U)
 * How to install the pirouette R package on Peregrine [download (.ogv)](http://richelbilderbeek.nl/peregrine_install_pirouette.ogv) [YouTube](https://youtu.be/ZgAe_e7Vwy0)
 * How to run a pirouette example on Peregrine [download (.ogv)](http://richelbilderbeek.nl/peregrine_run_pirouette_example.ogv) [YouTube](https://youtu.be/wnz6l_2e_-c)

## Presentations

 * Running (independent) jobs on the Peregrine computer cluster [PDF](independent_jobs.pdf) [ODP](independent_jobs.odp)
 * Running jobs with dependencies on the Peregrine computer cluster [PDF](job_dependencies.pdf) [ODP](job_dependencies.odp)

## Example

The most important function is `is_pff`: 'Is Peregrine-friendly
Filename/Folder'. If this function returns `FALSE`, one better not uses
that path on the Peregrine cluster!

```r
library(peregrine)
library(testthat)

expect_true(is_pff(get_pff_tempdir()))
expect_true(is_pff(get_pff_tempfile()))
expect_false(is_pff("/local/tmp/peregrine_unfriendly"))
expect_false(is_pff("/tmp/peregrine_unfriendly"))
```

One can use `to_pff` to convert a filename or folder to
its Peregrine-friendly equivalent.

## Measurements

Using `scripts/test_is_pff.R`.

### Can create file?

filename                | `can_create_file`
------------------------|------------------
`/local/tmp.txt`        | TRUE
`/local/tmp/tmp.txt`    | TRUE
`/tmp.txt`              | FALSE
`/tmp/tmp.txt`          | TRUE
`/data/tmp.txt`         | FALSE
`/data/p230198/tmp.txt` | TRUE
`/home/p230198/tmp.txt` | TRUE
`/home/tmp.txt`         | FALSE


### Can start BEAST2?

prefix          | `can_start_beast`
----------------|------------------
`/local`        | TRUE
`/local/tmp`    | TRUE
`/tmp`          | FALSE
`/`             | FALSE
`/data`         | FALSE
`/data/p230198` | FALSE
`/home`         | FALSE
`/home/p230198` | FALSE

### Can use BEAST2?

folder_name    | `can_use_beast`
---------------|----------------
`/tmp          | FALSE
`/local/tmp    | TRUE
`/data/p230198 | FALSE
`/home/p230198 | TRUE

### Can use working dir?

folder_name     | `can_use_working_dir`
----------------|----------------------
`/tmp`          | FALSE
`/local/tmp`    | FALSE
`/data/p230198` | FALSE
`/home/p230198` | TRUE

