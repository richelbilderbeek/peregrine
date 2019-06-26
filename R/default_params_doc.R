#' This function does nothing. It is intended to inherit is parameters'
#' documentation.
#' @param alignment a DNA alignment
#' @param alignment_params parameters for creating an alignment,
#'   as can be created by \code{\link[pirouette]{create_alignment_params}}
#' @param bd_mutation_rate the mutation rate when creating an alignment
#'   from a BD tree
#' @param bd_tree a phylogent of class \code{phylo}, created by a Birth Death
#'   process
#' @param bd_tree_filename name of the file that stores a BD twin tree
#' @param brts set of branching times
#' @param chain_length something
#' @param clock_model Name of the clock model that has
#' to be used for the inference. Valid names are 'strict' and 'rln'.
#' @param cond conditioning as specified in \code{\link[mbd]{mbd_sim}}
#' @param crown_age The crown age of the tree.
#' @param error_measure_params parameters to set how the error
#'   between given tree and inferred trees in measure,
#'   as can be created by \code{\link[pirouette]{create_error_measure_params}}
#' @param experiment_type the type of experiment,
#'   can be either \code{test} or \code{full}
#' @param experiments provides information on how the experiment has to be set
#'   up. To create it use \code{\link[pirouette]{create_experiment}}
#' @param fasta_filename name of a FASTA file
#' @param filename the file's name, without the path
#' @param folder_name name of the main folder
#' @param init_speciation_rate a speciation rate
#' @param init_extinction_rate an extinction rate
#' @param lambda per-lineage speciation rate. See \code{\link[mbd]{mbd_sim}}
#' @param mbd_l_matrix the L matrix of an MBD tree
#' @param mbd_params MBD parameter set
#' @param mbd_params_interval data frame with one MBD parameter set per row.
#'   If a simulation with one MBD parameter set has 10 replicates,
#'   this data frame will hold 10 rows, each with different seeds
#' @param mbd_paramses data frame with one MBD parameter set per row.
#'   If a simulation with one MBD parameter set has 10 replicates,
#'   this data frame will hold 10 rows, each with different seeds
#' @param mbd_mutation_rate the mutation rate when creating an alignment
#'   from a MBD tree
#' @param mbd_sim_rng_seed rng seed to simulate a mbd tree
#' @param mbd_tree an MBD tree
#' @param mcmc_chain_length length of an MCMC
#' @param misc_params additional parameters for razzo. They contain
#'   tree_filename to store the original given tree and mbd_sim_rng_seed for
#'   when an mbd tree is simulated
#' @param mu per-species extinction rate. See \code{\link[mbd]{mbd_sim}}
#' @param mutation_rate something
#' @param n_replicates number of replicates
#' @param nu the rate at which a multiple-birth specation is triggered.
#'   See \code{\link[mbd]{mbd_sim}}
#' @param nu_events the number of nu-triggered events that have to be
#'   present in the simulated tree
#' @param parameter_filename full path to a \code{parameters.RDa} file
#' @param parameters_filename full path to a \code{parameters.RDa} file
#' @param phylo a phylogeny
#' @param pir_params a parameter set for one \code{pirouette} run,
#'   as created by \link[pirouette]{create_pir_params}
#' @param posterior_trees phylogenetic trees in a BEAST2 posterior,
#'   of class \code{multiphylo}
#' @param precision define the precision of the approximation.
#' @param project_folder_name project folder name,
#'   will be the full path to \code{razzo_project}
#' @param q per-species speciation probability in case of occurrance of
#'   a multiple event. See \code{\link[mbd]{mbd_sim}}
#' @param sample_interval the interval at which the MCMC algorithm
#'   makes a measurement
#' @param sequence_length the length of each DNA sequence in an alignment
#' @param seed a random number generator seed
#' @param sim_pars something
#' @param sim_phylo something
#' @param site_model Name of the site model that
#' has to be used for the inference. Valid names are 'jc69' and 'gtr'.
#' @param sub_chain_length length of the sub-chain used by the Nested Sampling
#'   algorithm to estimate the marginal likelihood
#' @param tree an ultrametric phylogenetic tree of class \code{phylo}
#' @param tree_filename name of the phylogeny file
#' @param trees_filename name of the BEAST2 posterior phylogenies file
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
  bd_mutation_rate,
  bd_tree,
  bd_tree_filename,
  brts,
  chain_length,
  clock_model,
  cond,
  crown_age,
  error_measure_params,
  experiment_type,
  experiments,
  fasta_filename,
  filename,
  folder_name,
  init_speciation_rate,
  init_extinction_rate,
  lambda,
  mbd_l_matrix,
  mbd_mutation_rate,
  mbd_params,
  mbd_paramses,
  mbd_params_interval,
  mbd_sim_rng_seed,
  mbd_tree,
  mcmc_chain_length,
  misc_params,
  mu,
  mutation_rate,
  n_replicates,
  nu,
  nu_events,
  parameter_filename,
  parameters_filename,
  phylo,
  pir_params,
  posterior_trees,
  precision,
  project_folder_name,
  q,
  sample_interval,
  seed,
  sequence_length,
  sim_pars,
  sim_phylo,
  site_model,
  sub_chain_length,
  tree,
  tree_filename,
  trees_filename,
  twinning_params,
  verbose
) {
  # Nothing
}
