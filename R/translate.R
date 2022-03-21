#' translate
#'
#' @param codons
#'
#' @return amino_acid
#' @export
#'
#' @examples
#' translate('UUU')
#' # F
translate <- function(codons){
  amino_acid <- paste0(translation_table[codons], collapse = "")
  return(amino_acid)
}

