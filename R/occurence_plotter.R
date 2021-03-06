#' Plotting the occurence of each amino acid.
#' @param amino_acid_sequence
#' @title Plotting the occurence of each amino acid
#' @importFrom magrittr %>%
#' @return aa_plot
#' @export


occurence_plotter <- function(amino_acid_sequence){
  # Saves the unique amino acids in a string
    unique_amino_acids <- amino_acid_sequence %>%
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) %>%
    as.character() %>%
    unique()

    # Counts the amounts of each unique amino acid
  counts <- sapply(unique_amino_acids, function(aa) stringr::str_count(string = amino_acid_sequence, pattern =  aa)) %>%
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[["amino_acid_sequence"]] <- rownames(counts)

  # Plots the occurence of each amino acid.
  aa_plot <- counts %>%
    ggplot2::ggplot(ggplot2::aes(x = amino_acid_sequence, y = Counts, fill = amino_acid_sequence)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw()

  return(aa_plot)
}
