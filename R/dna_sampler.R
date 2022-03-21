#' dna_sampler
#'
#' @param sample_size
#'
#' @return Returns a random sample of DNA, of specified size.
#' @export
#'
#' @examples dna_sampler(10)
dna_sampler <- function(sample_size){
  random_letters <- sample(c("A", "T", "G", "C"), size = sample_size, replace = TRUE)
  sample_DNA <- paste0(random_letters, collapse = "")
  return(sample_DNA)
}

