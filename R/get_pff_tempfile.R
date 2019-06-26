#' Get a Peregrine-friendly temporary filename
#' @param pattern see \link{tempfile}
#' @param pff_tmpdir Peregrine-friendly temporary directory name,
#'   see \link{get_pff_tempdir}
#' @param fileext see \link{tempfile}
#' @seealso use \link{get_pff_tempdir}
#' to get a Peregrine-friendly folder name
#' @examples
#' library(testthat)
#'
#' expect_true(is_pff(get_pff_tempdir()))
#' expect_true(is_pff(get_pff_tempfile()))
#' expect_false(is_pff("/local/tmp/peregrine_unfriendly"))
#' expect_false(is_pff("/tmp/peregrine_unfriendly"))
#' @author Richel J.C. Bilderbeek
#' @export
get_pff_tempfile <- function(
  pattern = "pff_",
  pff_tmpdir = get_pff_tempdir(),
  fileext = ""
) {
  testit::assert(is_pff(pff_tmpdir)) # nolint peregrine function
  filename <- tempfile(
    pattern = pattern,
    tmpdir = pff_tmpdir,
    fileext = fileext
  )
  testit::assert(!file.exists(filename))
  testit::assert(is_pff(filename)) # nolint peregrine function
  filename
}
