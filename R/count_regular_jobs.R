#' Count the number of \code{regular} jobs
#'
#' Count the number of \code{regular} jobs that are running on Peregrine for
#' a specific user.
#'
#' Use \link{count_jobs} to count all jobs running.
#' Use \link{count_vulture_jobs} to count the jobs running
#' on the \code{culture} partition.
#' @inheritParams default_params_doc
#' @return the number of jobs
#' @examples
#' if (is_on_peregrine()) {
#'   count_regular_jobs()
#' }
#' @export
count_regular_jobs <- function(user_name = "$USER") {
  length(
    stringr::str_which(
      string = system2(
        command = "squeue",
        args = c("-u", user_name),
        stdout = TRUE
      ),
      pattern = "regular"
    )
  )
}
