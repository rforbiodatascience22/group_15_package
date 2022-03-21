#' Title codon_list
#'
#' @param sequence The name of the string that contains your amono acid sequence
#' @param start Set your reading frame (1, 2 or 3) (https://en.wikipedia.org/wiki/Reading_frame)
#'
#' @return Returns each codon from the sequence
#' @export
#'
#' @examples codon_list(my_sequence, start = 2)
codon_list <- function(sequence, start = 1){
  seq_len <- nchar(sequence)
  codons <- substring(sequence,
                      first = seq(from = start, to = seq_len-3+1, by = 3),
                      last = seq(from = 3+start-1, to = seq_len, by = 3))
  return(codons)
}
