#' Is the filename a Peregrine-friendly filename?
#' @param filename name of the file
#' @seealso see \link{get_pff_tempdir} and \link{get_pff_tempfile}
#' to get a Peregrine-friendly temporary folder and filename
#' @examples
#' library(testthat)
#'
#' expect_true(is_pff(get_pff_tempdir()))
#' expect_true(is_pff(get_pff_tempfile()))
#' expect_false(is_pff("/local/tmp/peregrine_unfriendly"))
#' expect_false(is_pff("/tmp/peregrine_unfriendly"))
#' @author Richel J.C. Bilderbeek
#' @export
is_pff <- function(filename) {
  all(is.na(stringr::str_match(string = filename, pattern = "(/local)?/tmp/")))
}
