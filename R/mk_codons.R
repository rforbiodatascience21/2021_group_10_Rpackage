#' Get codons from a DNA string
#' 
#' \code{mk_codons} takes a DNA string and uses the \code{substring} 
#' function to divide it into 3-letter codons. 
#' 
#' @param dna a string of nucleotides (only DNA, not usable on RNA), 
#' which will be subset into codons.
#' @param s the starting position for extracting the codons. Default is set to 1.
#' @return returns \code{codons}, the codons extracted from the originating DNA string.
#' 

mk_codons <- function(dna, s = 1){
  l = nchar(dna)
  codons <- substring(dna,
                      first = seq(from = s, to = l-3+1, by = 3),
                      last = seq(from = 3+s-1, to = l, by = 3))
  return(codons)
}