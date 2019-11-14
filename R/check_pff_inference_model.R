#' Check if the inference model is Peregrine friendly
#'
#' Will \link{stop} if not
#' @inheritParams default_params_doc
#' @export
check_pff_inference_model <- function(inference_model) {
  beautier::check_inference_model(inference_model)

  if (is.character(inference_model$tipdates_filename) &&
    !is_pff(inference_model$tipdates_filename)) {
    stop(
      "'tipdates_filename' must be NA or Peregrine friendly. \n",
      "Actual value: ", inference_model$tipdates_filename
    )
  }
  peregrine::check_pff_mcmc(inference_model$mcmc)
}
