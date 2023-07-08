library(tidyverse)
library(xts)
library(tbl2xts)
library(dygraphs)

# prices of selected financial assets
prices_file <- "https://raw.githubusercontent.com/multidis/hult-inter-bus-reports-r/main/visualization/etf_assets.csv"
prices_tbl <- read_csv(prices_file)

# example to evaluate from your colleague
prices_tbl %>%
  select("Date", "GLD", "USO") %>%
  tbl_xts %>%
  dygraph(ylab = "Price") %>%
  dySeries("GLD") %>%
  dySeries("USO", axis = "y2")


# TASK:
# (1) Create an RMarkdown document from this script, with HTML output.
# (2) Evaluate the visualization choices. Suggest (implement) alternatives
#  if you notice any problems.
# (3) Identify which of the assets (GLD, USO) constitutes a more risky
#  investment during the time period being evaluated.
