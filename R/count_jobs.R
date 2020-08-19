#' Count the number of jobs
#' @export
count_jobs <- function(user_name = "p230198") {
  length(
    system2(
      command = "squeue",
      args = c("-u", "p230198"),
      stdout = TRUE
    )
  )
}
