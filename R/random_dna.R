#' Create a random DNA sequence based on the wanted length
#' 
#' \code{random_dna} takes a number as an input argument, which is the length of the 
#' DNA sequence, and returns a random sequence of that length.
#' 
#' @param l is an integer representing the length of sequence
#' 
#' @return returns a random DNA sequence of length \code{l}

random_dna <- function(l){
  nucleotides <- sample(c("A", "T", "G", "C"), size = l, replace = TRUE)
  dna = paste0(nucleotides, collapse = "")
  return(dna)
}