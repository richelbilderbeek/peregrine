#' Get a Peregrine-friendly temporary directory
#' @seealso use \link{get_pff_tempfile}
#' to get a Peregrine-friendly filename
#' @examples
#' is_pff(get_pff_tempdir())
#' is_pff(get_pff_tempfile())
#' is_pff("/peregrine_unfriendly")
#' is_pff("/tmp/peregrine_unfriendly")
#' is_pff("/data/peregrine_unfriendly")
#' @author Richèl J.C. Bilderbeek
#' @export
get_pff_tempdir <- function() {
  dirname <- file.path(
    rappdirs::user_cache_dir(),
    basename(tempfile())
  )
  dirname
}
