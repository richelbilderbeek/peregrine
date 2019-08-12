#' Is this code running on Peregrine?
#' @return TRUE if yes, FALSE if no
#' @author Richel J.C. Bilderbeek
#' @export
is_on_peregrine <- function() {
  Sys.getenv("HOSTNAME") == "peregrine.hpc.rug.nl"
}
