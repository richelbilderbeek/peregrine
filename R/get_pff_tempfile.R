#' Get a Peregrine-friendly temporary filename
#' @inheritParams default_params_doc
#' @seealso use \link{get_pff_tempdir}
#' to get a Peregrine-friendly folder name
#' @examples
#' library(testthat)
#'
#' expect_true(is_pff(get_pff_tempdir()))
#' expect_true(is_pff(get_pff_tempfile()))
#' expect_false(is_pff("/peregrine_unfriendly"))
#' expect_false(is_pff("/tmp/peregrine_unfriendly"))
#' expect_false(is_pff("/data/peregrine_unfriendly"))
#' @author Richel J.C. Bilderbeek
#' @export
get_pff_tempfile <- function(
  pattern = "pff_",
  pff_tmpdir = get_pff_tempdir(),
  fileext = ""
) {
  testit::assert(peregrine::is_pff(pff_tmpdir))
  filename <- tempfile(
    pattern = pattern,
    tmpdir = pff_tmpdir,
    fileext = fileext
  )
  testit::assert(!file.exists(filename))
  filename
}
