#' Translation from DNA to RNA
#'
#' @param dna
#'
#' @return rna
#' @export
#'
#' @examples
dna_to_rna <- function(dna){
  rna <- gsub("T", "U", dna)
  return(rna)
}
