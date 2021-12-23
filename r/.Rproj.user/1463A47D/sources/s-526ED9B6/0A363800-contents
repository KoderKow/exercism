# This is a stub function to take two strings
# and calculate the hamming distance
hamming <- function(strand1, strand2) {
  if (nchar(strand1) != nchar(strand2)) {
    stop("Lengths are not the same")
  }

  split_1 <- strsplit(strand1, "")[[1]]
  split_2 <- strsplit(strand2, "")[[1]]

  n_diff <- sum((split_1 == split_2) == 0)

  return(n_diff)
}
