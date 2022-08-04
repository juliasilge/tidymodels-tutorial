hexes <- function(..., size = 64) {
  x <- c(...)
  x <- sort(unique(x))
  right <- (seq_along(x) - 1) * size

  res <- glue::glue(
    '![](hexes/<x>.png){.absolute top=-20 right=<right> width="<size>" height="<size * 1.16>"}',
    .open = "<", .close = ">"
  )

  paste0(res, collapse = " ")
}

knitr::opts_chunk$set(
  digits = 3,
  comment = "#>",
  dev = 'svglite'
)

# devtools::install_github("gadenbuie/countdown")
library(countdown)
library(ggplot2)
theme_set(theme_minimal(base_size = 16))
options(cli.width = 70)

data_color  <- "#767381"
train_color <- "#1a162d"
test_color  <- "#D74826"
splits_pal <- c(data_color, train_color, test_color)
