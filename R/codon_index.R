codon_index <- function(sequence, start = 1){
  seq_len <- nchar(sequence)
  codons <- substring(seq_len,
                      first = seq(from = start, to = seq_len-3+1, by = 3),
                      last = seq(from = 3+start-1, to = seq_len, by = 3))
  return(codons)
}
