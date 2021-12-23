parse_phone_number <- function(number_string) {
  x_init <- gsub("[- .)(+]|[a-zA-Z]*:?","", number_string)

  if (nchar(x_init) < 10 | nchar(x_init) > 11) {
    return(NULL)
  }

  if (nchar(x_init) == 11 & strsplit(x_init, "")[[1]][1] != 1 | strsplit(x_init, "")[[1]][2] < 2 | strsplit(x_init, "")[[1]][5] < 2) {
    return(NULL)
  }

  if (nchar(x_init) == 10 & strsplit(x_init, "")[[1]][1] < 2 | strsplit(x_init, "")[[1]][4] < 2) {
    return(NULL)
  }

  x_10 <- substr(x_init, (nchar(x_init) + 1) -10 , nchar(x_init))

  return(x_10)
}
