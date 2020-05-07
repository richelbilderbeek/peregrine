#' Create a \code{pir_params} with PFFs
#' @inheritParams default_params_doc
#' @author Richèl J.C. Bilderbeek
#' @export
create_pff_pir_params <- function(
  alignment_params,
  twinning_params = NA,
  experiments = list(pirouette::create_experiment()),
  error_measure_params = pirouette::create_error_measure_params(),
  evidence_filename = NA,
  verbose = FALSE
) {
  pirouette::check_alignment_params(alignment_params)
  if (!beautier::is_one_na(twinning_params)) {
    pirouette::check_twinning_params(twinning_params)
  }
  pirouette::check_experiments(experiments)
  pirouette::check_error_measure_params(error_measure_params)

  pir_params <- pirouette::create_pir_params(
    alignment_params = alignment_params,
    twinning_params = twinning_params,
    experiments = experiments,
    error_measure_params = error_measure_params,
    evidence_filename = evidence_filename,
    verbose = verbose
  )

  pff_pir_params <- peregrine::to_pff_pir_params(pir_params)

  peregrine::check_pff_pir_params(pff_pir_params)

  pff_pir_params
}
