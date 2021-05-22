#' Convert time from HH:MM:SS to the number of seconds
#'
#' This time format is used in a Peregrine log file
#' @param str the time string as text, for example \code{"12:34:56"}
#' @examples
#' time_str <- "12:55:44"
#' # 12 * 60 * 60) + (55 * 60) + 44
#' time_str_to_n_sec(time_str)
#' @seealso use \link{time_strs_to_n_secs} for multiple strings
#' @export
time_str_to_n_sec <- function(str) {
  x <- stringr::str_match(str, "((.)-)?(..):(..):(..)")
  n_secs <- as.numeric(x[1, 6])
  n_mins <- as.numeric(x[1, 5])
  n_hours <- as.numeric(x[1, 4])
  n_days <- as.numeric(x[1, 3])
  if (is.na(n_days)) n_days <- 0

  n_hours <- n_hours + (n_days * 24)
  n_mins <- n_mins + (n_hours * 60)
  n_secs <- n_secs + (n_mins * 60)
  n_secs
}
