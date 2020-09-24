#' Get a Peregrine-friendly temporary directory
#' @seealso use \link{get_pff_tempfile}
#' to get a Peregrine-friendly filename
#' @examples
#'
#' expect_true(is_pff(get_pff_tempdir()))
#' expect_true(is_pff(get_pff_tempfile()))
#' expect_false(is_pff("/peregrine_unfriendly"))
#' expect_false(is_pff("/tmp/peregrine_unfriendly"))
#' expect_false(is_pff("/data/peregrine_unfriendly"))
#' @author Richèl J.C. Bilderbeek
#' @export
get_pff_tempdir <- function() {
  dirname <- file.path(
    rappdirs::user_cache_dir(),
    basename(tempfile())
  )
  dirname
}
