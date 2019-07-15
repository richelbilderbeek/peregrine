#' Create alignment parameters with PFF
#' @inheritParams default_params_doc
#' @usage
#' create_pff_alignment_params(
#'   root_sequence = pirouette::create_alignment_params()$root_sequence,
#'   mutation_rate = pirouette::create_alignment_params()$mutation_rate,
#'   site_model = pirouette::create_alignment_params()$site_model,
#'   clock_model = pirouette::create_alignment_params()$clock_model,
#'   rng_seed = pirouette::create_alignment_params()$rng_seed,
#'   fasta_filename = get_pff_tempfile(pattern = "alignment_", fileext = ".fasta")
#' )
#' @export
create_pff_alignment_params <- function(
  root_sequence = pirouette::create_alignment_params()$root_sequence,
  mutation_rate = pirouette::create_alignment_params()$mutation_rate,
  site_model = pirouette::create_alignment_params()$site_model,
  clock_model = pirouette::create_alignment_params()$clock_model,
  rng_seed = pirouette::create_alignment_params()$rng_seed,
  fasta_filename = get_pff_tempfile(pattern = "alignment_", fileext = ".fasta")
) {
  alignment_params <- pirouette::create_alignment_params(
    root_sequence = root_sequence,
    mutation_rate = mutation_rate,
    site_model = site_model,
    clock_model = clock_model,
    rng_seed = rng_seed,
    fasta_filename = fasta_filename
  )
  check_pff_alignment_params(alignment_params) # nolint peregrine function
  alignment_params
}
