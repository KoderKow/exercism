raindrops <- function(number) {
  pling <- "Pling"
  plang <- "Plang"
  plong <- "Plong"

  x <- y <- z <- NULL

  if (number %% 3 == 0) {
    x <- pling
  }

  if (number %% 5 == 0) {
    y <- plang
  }

  if (number %% 7 == 0) {
    z <- plong
  }

  rain <- paste0(x, y, z, collapse = "")

  if (rain == "") {
    rain <- as.character(number)
  }

  return(rain)
}
