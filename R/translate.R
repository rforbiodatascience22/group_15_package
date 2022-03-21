translate <- function(codons){
  name_me2 <- paste0(translation_table[codons], collapse = "")
  return(name_me2)
}
