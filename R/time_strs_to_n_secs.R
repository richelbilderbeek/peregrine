#' Convert each time string to the number of seconds
#' @param strs the time strings as text, for example \code{"12:34:56"}
#' @examples
#' time_strs <- c("00:00:01", "01:02:03", "1-02:03:04")
#'
#' # Reduplicated plural: a vector of number of seconds
#' n_secses <- time_strs_to_n_secs(time_strs)
#'
#' expect_true(all(n_secses > 0))
#' @export
time_strs_to_n_secs <- function(strs) {
  n_secs <- rep(NA, length(strs))
  for (i in seq_along(strs)) {
    n_secs[i] <- peregrine::time_str_to_n_sec(strs[i])
  }
  n_secs
}
