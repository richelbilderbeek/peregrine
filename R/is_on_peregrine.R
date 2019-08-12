#' Is this code running on Peregrine?
#' @return TRUE if yes, FALSE if no
#' @author Richel J.C. Bilderbeek
#' @export
is_on_peregrine <- function() {
  is_on_peregrine_login_node() || is_on_peregrine_worker_node() # nolint peregrine function
}
