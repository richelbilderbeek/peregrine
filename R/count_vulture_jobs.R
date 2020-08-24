#' Count the number of \code{vulture} jobs
#'
#' Count the number of all jobs that are running on Peregrine for
#' a specific user.
#'
#' Use \link{count_jobs} to count all jobs running
#' on the \code{regular} partition.
#' Use \link{count_regular_jobs} to count the jobs running
#' on the \code{regular} partition.
#' @inheritParams default_params_doc
#' @return the number of jobs
#' @examples
#' if (is_on_peregrine()) {
#'   count_vulture_jobs()
#' }
#' @export
count_vulture_jobs <- function(user_name = "$USER") {
  length(
    stringr::str_which(
      string = system2(
        command = "squeue",
        args = c("-u", user_name),
        stdout = TRUE
      ),
      pattern = "vulture"
    )
  )
}
