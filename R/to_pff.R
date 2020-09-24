#' Convert a filename or folder to it Peregrine-friendly equivalent
#' @inheritParams default_params_doc
#' @examples
#' # Filenames
#' filename <- "/peregrine_unfriendly.csv"
#' pff <- to_pff(filename)
#'
#' filename <- "/tmp/peregrine_unfriendly.csv"
#' pff <- to_pff(filename)
#'
#' filename <- "/data/peregrine_unfriendly.csv"
#' pff <- to_pff(filename)
#'
#' # Folder names
#' foldername <- "/peregrine_unfriendly"
#' pff <- to_pff(foldername)
#'
#' foldername <- "/tmp/peregrine_unfriendly"
#' pff <- to_pff(foldername)
#'
#' foldername <- "/data/peregrine_unfriendly"
#' pff <- to_pff(foldername)
#' @export
to_pff <- function(filename) {
  file.path(
    peregrine::get_pff_tempdir(),
    basename(filename)
  )
}
