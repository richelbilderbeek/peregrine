#' Convert a filename or folder to it Peregrine-friendly equivalent
#' @inheritParams default_params_doc
#' @examples
#' library(testthat)
#'
#' # Filenames
#'
#' filename <- "/local/tmp/peregrine_unfriendly.csv"
#' expect_false(is_pff(filename))
#' pff <- to_pff(filename)
#' expect_true(is_pff(pff))
#' expect_equal(basename(filename), basename(pff))
#'
#' filename <- "/tmp/peregrine_unfriendly.csv"
#' expect_false(is_pff(filename))
#' pff <- to_pff(filename)
#' expect_true(is_pff(pff))
#' expect_equal(basename(filename), basename(pff))
#'
#' # Folder names
#'
#' foldername <- "/local/tmp/peregrine_unfriendly"
#' expect_false(is_pff(foldername))
#' pff <- to_pff(filename)
#' expect_true(is_pff(pff))
#' expect_equal(basename(foldername), basename(pff))
#'
#' foldername <- "/tmp/peregrine_unfriendly"
#' expect_false(is_pff(foldername))
#' pff <- to_pff(filename)
#' expect_true(is_pff(pff))
#' expect_equal(basename(foldername), basename(pff))
#' @export
to_pff <- function(filename) {
  file.path(
    get_pff_tempdir(),
    basename(filename)
  )
}
