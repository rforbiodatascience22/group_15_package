dna_to_rna <- function(dna){
  rna <- gsub("T", "U", dna)
  return(rna)
}
