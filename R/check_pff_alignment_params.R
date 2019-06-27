#' Check if the alignment parameter have PFF
#' @inheritParams default_params_doc
#' @export
check_pff_alignment_params <- function(alignment_params) {
  if (!peregrine::is_pff(alignment_params$fasta_filename)) {
    stop("Peregrine-unfriendly filename for 'alignment_params$fasta_filename'")
  }
}
