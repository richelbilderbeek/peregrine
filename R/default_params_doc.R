#' This function does nothing. It is intended to inherit is parameters'
#' documentation.
#' @param alignment a DNA alignment
#' @param alignment_params parameters for creating an alignment,
#'   as can be created by \code{\link[pirouette]{create_alignment_params}}
#' @param beast2_options BEAST2 options,
#'   as can be created by \link[beastier]{create_beast2_options}
#' @param beast2_working_dir BEAST2 temporary working directory,
#' as used in \link[beastier]{create_beast2_options}
#' @param chain_length something
#' @param clock_model a clock model,
#'   as created by \link[beautier]{create_clock_model}
#' @param clock_models a list of one or more clock models,
#'   as created by \link[beautier]{create_clock_model}
#' @param crown_age The crown age of the tree.
#' @param error_measure_params parameters to set how the error
#'   between given tree and inferred trees in measure,
#'   as can be created by \code{\link[pirouette]{create_error_measure_params}}
#' @param evidence_filename filename to store the estimated
#'   evidences (aka marginal likelihoods)
#' @param exclude_model an inference model that has to be excluded, as can be
#'   created by \link[beautier]{create_inference_model}
#' @param experiment a \link{pirouette} experiment,
#'   as can be created by \link{create_experiment}
#' @param experiments a list of one or more \link{pirouette} experiments,
#'   as can be created by \link{create_experiment}. If more than one experiment
#'   is provided and a "generative" experiment is part of them, the "generative"
#'   one has to be the first in the list.
#' @param experiment_type the type of experiment,
#'   can be either \code{test} or \code{full}
#' @param fasta_filename name of a FASTA file
#' @param fileext see \link{tempfile}
#' @param filename the file's name, without the path
#' @param folder_name name of the main folder
#' @param input_filename BEAST2 input file name,
#' as used in \link[beastier]{create_beast2_options}
#' @param mcmc an MCMC,
#' as created by \link[beautier]{create_mcmc}
#' @param mcmc_chain_length length of an MCMC
#' @param method determines how to create the twin tree
#' \itemize{
#'     \item 'random_tree' just produces a random tree;
#'     \item 'max_clade_cred' simulates \code{n_replicates} trees and
#'       uses \link[phangorn]{maxCladeCred} to create a consensus tree;
#'     \item 'max_likelihood' simulates \code{n_replicates} trees
#'      and selects the most likely;
#'   }
#' @param misc_params additional parameters for razzo. They contain
#'   tree_filename to store the original given tree and mbd_sim_rng_seed for
#'   when an mbd tree is simulated
#' @param mrca_prior an MRCA priors,
#' as created by \link[beautier]{create_mrca_prior}
#' @param mutation_rate something
#' @param n_replicates number of replicates
#' @param output_log_filename BEAST2 ouput \code{.log} file name,
#' as used in \link[beastier]{create_beast2_options}
#' @param output_trees_filenames BEAST2 ouput \code{.trees} file name,
#' as used in \link[beastier]{create_beast2_options}
#' @param output_state_filename BEAST2 ouput \code{.xml.state} file name,
#' as used in \link[beastier]{create_beast2_options}
#' @param parameter_filename full path to a \code{parameters.RDa} file
#' @param parameters_filename full path to a \code{parameters.RDa} file
#' @param pattern see \link{tempfile}
#' @param pff_tmpdir Peregrine-friendly temporary directory name,
#'   see \link{get_pff_tempdir}
#' @param phylo a phylogeny
#' @param pir_params \code{pirouette} parameters,
#'   as created by \link[pirouette]{create_pir_params}
#' @param posterior_trees phylogenetic trees in a BEAST2 posterior,
#'   of class \code{multiphylo}
#' @param rng_seed a random number generator seed
#' @param rng_seed_twin_alignment the random number generator seed
#'   as used in the simulation of a twin alignment
#' @param rng_seed_twin_tree the random number generator seed as used in the
#'   simulation of a twin tree
#' @param root_sequence the DNA sequence at the root of the phylogeny.
#'   By default, this will consist out of an equal amount of each letter
#' @param sample_interval the interval at which the MCMC algorithm
#'   makes a measurement
#' @param sequence_length the length of each DNA sequence in an alignment
#' @param seed a random number generator seed
#' @param site_model a nucleotide substitution model,
#'   as created by \link[beautier]{create_site_model}
#' @param site_models a list of one or more site models,
#'   as created by \link[beautier]{create_site_model}
#' @param sub_chain_length length of the sub-chain used by the Nested Sampling
#'   algorithm to estimate the marginal likelihood
#' @param tree an ultrametric phylogenetic tree of class \code{phylo}
#' @param tree_filename name of the phylogeny file
#' @param tree_prior a tree prior,
#'   as created by \link[beautier]{create_tree_prior}
#' @param tree_priors a list of one or more tree priors,
#'   as created by \link[beautier]{create_tree_prior}
#' @param trees_filename name of the BEAST2 posterior phylogenies file
#' @param twin_alignment_filename name of the FASTA file the twin
#'   alignment will be saved to
#' @param twin_evidence_filename filename to store the estimated
#'   evidences (aka marginal likelihoods) of the twin tree
#' @param twin_tree_filename  name of the (\code{.newick}) file the twin
#'   tree will be saved to
#' @param twin_model the model you want to use to generate the twin tree:
#'   \itemize{
#'     \item \code{birth_death}: birth death
#'     \item \code{yule}: Yule or pure-birth
#'   }
#'   See \link[pirouette]{get_twin_models} to see all possible
#'   values of \code{twin_model}
#' @param twinning_params parameters for creating a twin tree,
#'   as can be created by \code{\link[pirouette]{create_twinning_params}}
#' @param verbose give more output
#' @author Documentation by Giovanni Laudanno,
#'   use of this function by Richel J.C. Bilderbeek
#' @note This is an internal function, so it should be marked with
#'   \code{@noRd}. This is not done, as this will disallow all
#'   functions to find the documentation parameters
#'
default_params_doc <- function(
  alignment,
  alignment_params,
  beast2_options,
  beast2_working_dir,
  chain_length,
  clock_model,
  clock_models,
  crown_age,
  error_measure_params,
  evidence_filename,
  exclude_model,
  experiment,
  experiments,
  experiment_type,
  fasta_filename,
  fileext,
  filename,
  folder_name,
  input_filename,
  mcmc,
  mcmc_chain_length,
  method,
  misc_params,
  mrca_prior,
  mutation_rate,
  n_replicates,
  output_log_filename,
  output_trees_filenames,
  output_state_filename,
  parameter_filename,
  parameters_filename,
  pattern,
  pff_tmpdir,
  phylo,
  pir_params,
  posterior_trees,
  rng_seed,
  rng_seed_twin_alignment,
  rng_seed_twin_tree,
  root_sequence,
  sample_interval,
  seed,
  sequence_length,
  site_model,
  site_models,
  sub_chain_length,
  tree,
  tree_prior,
  tree_priors,
  tree_filename,
  trees_filename,
  twin_alignment_filename,
  twin_evidence_filename,
  twin_model,
  twin_tree_filename,
  twinning_params,
  verbose
) {
  # Nothing
}
