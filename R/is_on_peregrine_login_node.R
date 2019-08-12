#' Is this code run on the Peregrine login node?
#' @return TRUe if yes, FALSE if np
#' @author Richel J.C. Bilderbeek
#' @export
is_on_peregrine_login_node <- function() {
  Sys.getenv("HOSTNAME") == "peregrine.hpc.rug.nl"
}
