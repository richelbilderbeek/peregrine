#' Count the number of jobs
#' @export
count_jobs <- function(user_name = "$USER") {
  length(
    system2(
      command = "squeue",
      args = c("-u", user_name),
      stdout = TRUE
    )
  ) - 1
}
