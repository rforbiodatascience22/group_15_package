translate <- function(codons){
  amino_acid <- paste0(translation_table[codons], collapse = "")
  return(amino_acid)
}
