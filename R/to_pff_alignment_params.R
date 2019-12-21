#' Convert all the alignment_params with Peregrine-unfriendly
#' filenames to ones that do
#' @inheritParams default_params_doc
#' @export
to_pff_alignment_params <- function(alignment_params) {

  pirouette::check_alignment_params(alignment_params)

  if (!peregrine::is_pff(alignment_params$fasta_filename)) {
    alignment_params$fasta_filename <-
      peregrine::to_pff(alignment_params$fasta_filename)
  }

  peregrine::check_pff_alignment_params(alignment_params)
  alignment_params
}
