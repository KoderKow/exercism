download <- function(cmd) {
  new_cmd <- stringr::str_remove(cmd, "^exercism ")

  output <- system2(
    command = "exercism",
    args = new_cmd,
    stdout = TRUE
  )

  messenger(output)

  return(invisible())
}

submit <- function(exercism) {
  cmd <- paste0(
    "submit ", exercism, "/", exercism, ".R"
  )

  output <- system2(
    command = "exercism",
    args = cmd,
    stdout = TRUE
  )

  messenger(output)

  return(invisible())
}

messenger <- function(output) {
  clean_output <- stringr::str_squish(output)
  clean_output <- clean_output[clean_output != ""]
  clean_output <- stringr::str_replace_all(clean_output, "\\\\", "/")

  message(paste(clean_output, collapse = " "))

  return(invisible())
}
