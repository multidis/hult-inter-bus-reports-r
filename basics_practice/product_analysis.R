library(tidyverse)

# https://github.com/multidis/hult-inter-bus-reports-r/blob/main/basics_practice/products.csv
data_url <- "https://raw.githubusercontent.com/multidis/hult-inter-bus-reports-r/main/basics_practice/products.csv"
p <- read_csv(data_url)
p

# What is the third most sold product (based on the "monthly_demand" metric)?


# What is the fifth most profitable product based on the relative margin
# (that is, the ratio of the "unit_margin" to "price" values)?


# If a store manager wanted to have a single-level shelf displaying
# the top-ten most expensive products in the store, what would be the
# minimal required width for such a shelf that would fit
# all of those ten products? (Base your calculation on the product "width" column). 

