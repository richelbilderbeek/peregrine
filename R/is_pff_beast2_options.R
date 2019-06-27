#' Are the BEAST2 options PFF?
#' @export
is_pff_beast2_options <- function(beast2_options) {
  result <- FALSE
  tryCatch({
    check_pff_beast2_options(beast2_options) # nolint peregrine function
    result <- TRUE
  }, error = function(e) {} # nolint ignore e
  )
  result
}
