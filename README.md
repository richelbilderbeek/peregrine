# `peregrine`

Branch|[![Travis CI logo](pics/TravisCI.png)](https://travis-ci.org)|[![Codecov logo](pics/Codecov.png)](https://www.codecov.io)
---|---|---
`master`|[![Build Status](https://travis-ci.org/richelbilderbeek/peregrine.svg?branch=master)](https://travis-ci.org/richelbilderbeek/peregrine)     | [![codecov.io](https://codecov.io/github/richelbilderbeek/peregrine/coverage.svg?branch=master)](https://codecov.io/github/richelbilderbeek/peregrine?branch=master)
`develop`|[![Build Status](https://travis-ci.org/richelbilderbeek/peregrine.svg?branch=develop)](https://travis-ci.org/richelbilderbeek/peregrine)   | [![codecov.io](https://codecov.io/github/richelbilderbeek/peregrine/coverage.svg?branch=develop)](https://codecov.io/github/richelbilderbeek/peregrine?branch=develop)
`giovanni`|[![Build Status](https://travis-ci.org/richelbilderbeek/peregrine.svg?branch=giovanni)](https://travis-ci.org/richelbilderbeek/peregrine) | [![codecov.io](https://codecov.io/github/richelbilderbeek/peregrine/coverage.svg?branch=giovanni)](https://codecov.io/github/richelbilderbeek/peregrine?branch=giovanni)
`richel`|[![Build Status](https://travis-ci.org/richelbilderbeek/peregrine.svg?branch=richel)](https://travis-ci.org/richelbilderbeek/peregrine)     | [![codecov.io](https://codecov.io/github/richelbilderbeek/peregrine/coverage.svg?branch=richel)](https://codecov.io/github/richelbilderbeek/peregrine?branch=richel)

`peregrine` is:

 * A collection of notes on the Groningen Peregrine computer cluster: [see my notes](doc/README.md)
 * An R package for some Peregrine functions

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

