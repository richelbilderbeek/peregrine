#' Get a Peregrine-friendly temporary filename
#' @inheritParams default_params_doc
#' @seealso use \link{get_pff_tempdir}
#' to get a Peregrine-friendly folder name
#' @examples
#' is_pff(get_pff_tempdir())
#' is_pff(get_pff_tempfile())
#' is_pff("/peregrine_unfriendly")
#' is_pff("/tmp/peregrine_unfriendly")
#' is_pff("/data/peregrine_unfriendly")
#' @author Richèl J.C. Bilderbeek
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
