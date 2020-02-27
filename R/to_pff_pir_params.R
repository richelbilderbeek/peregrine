#' Convert a \code{pir_params} to a \code{pir_params}
#' with Peregrine friendly filenames.
#'
#' @note \link{to_pff_pir_params} will also initialize the
#' \code{pir_params}, by calling \link[pirouette]{init_pir_params}
#' @inheritParams default_params_doc
#' @export
to_pff_pir_params <- function(pir_params) {
  pirouette::check_pir_params(pir_params)

  # Fill in the BEAUti shorthand notations for the trace and trees files
  pir_params <- pirouette::init_pir_params(pir_params)

  pir_params$alignment_params <- peregrine::to_pff_alignment_params(
    pir_params$alignment_params
  )
  if (!beautier::is_one_na(pir_params$twinning_params)) {
    pir_params$twinning_params <- peregrine::to_pff_twinning_params(
      pir_params$twinning_params
    )
  }
  pir_params$experiments <- peregrine::to_pff_experiments(
    pir_params$experiments
  )

  if (!beautier::is_one_na(pir_params$evidence_filename)) {
    pir_params$evidence_filename <- peregrine::to_pff(
      pir_params$evidence_filename
    )
  }
  peregrine::check_pff_pir_params(pir_params)

  pir_params
}
