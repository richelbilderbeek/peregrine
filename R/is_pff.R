#' Is the filename a Peregrine-friendly filename?
#' @inheritParams default_params_doc
#' @param filename name of the file
#' @seealso see \link{get_pff_tempdir} and \link{get_pff_tempfile}
#' to get a Peregrine-friendly temporary folder and filename
#' @examples
#' library(testthat)
#'
#' expect_true(is_pff(get_pff_tempdir()))
#' expect_true(is_pff(get_pff_tempfile()))
#' expect_false(is_pff("/peregrine_unfriendly"))
#' expect_false(is_pff("/tmp/peregrine_unfriendly"))
#' expect_false(is_pff("/data/peregrine_unfriendly"))
#' expect_false(is_pff("/data/p230198/peregrine_unfriendly"))
#' @seealso Use \link{to_pff} to convert a filename or folder to
#' its Peregrine-friendly equivalent
#' @author Richel J.C. Bilderbeek
#' @export
is_pff <- function(filename) {
  if (stringr::str_count(string = filename, pattern = "/") == 1) {
    return(FALSE)
  }
  all(
    is.na(
      stringr::str_match(
        string = filename,
        pattern = "^(/tmp/|/data/)"
      )
    )
  )
}
