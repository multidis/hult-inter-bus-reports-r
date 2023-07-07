## https://www.tidyverse.org/
library(tidyverse)

# built-in dataset example
library(datasets)
attach(iris)
data(iris)
class(iris)
is.data.frame(iris)

# access columns
iris$Species
# access elements
iris[2, 2]
iris[2,]
iris[2, "Sepal.Width"]
iris$Sepal.Width[2]


# tidy table format
iris_tbl <- as_tibble(iris)
class(iris_tbl)
iris_tbl

# filtering
iris_tbl %>% filter(Species == "setosa")
iris_tbl %>% filter(Species == "setosa", Petal.Length > 1.5)

# sorting
iris_tbl %>% arrange(Sepal.Length)
iris_tbl %>% arrange(desc(Sepal.Length))

iris_tbl %>%
  filter(Species == "setosa", Petal.Length > 1.5) %>%
  arrange(desc(Sepal.Length))

# modification
iris_tbl_mod <- iris_tbl %>% mutate(SLmm = Sepal.Length*10)

iris_tbl_filt_mod <- iris_tbl %>%
  filter(Species == "setosa", Petal.Length > 1.5) %>%
  mutate(SLmm = Sepal.Length*10) %>%
  arrange(desc(SLmm))

# summary metrics and grouping
iris_tbl %>% summarize(medSL = median(Sepal.Length))

iris_tbl %>%
  group_by(Species) %>%
  summarize(medSLsomething = median(Sepal.Length))

iris_sl <- iris_tbl %>%
  group_by(Species) %>%
  summarize(medSLsomething = median(Sepal.Length))
iris_sl
