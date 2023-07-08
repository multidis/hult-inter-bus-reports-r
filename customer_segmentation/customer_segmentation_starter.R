library(tidyverse)

# customer RFM dataset
fcsv <- "https://raw.githubusercontent.com/multidis/hult-retail-analytics/main/customer_segmentation/datasets/customers_30.csv"
cust_rfm <- read_csv(fcsv)
cust_rfm

# modify below to make interactive plots, explore filtering by selected quantiles
cust_rfm %>%
  ggplot(aes(x=frequency, y=monetary)) +
  geom_point()

# e.g. shoppers within the most recent week
cust_rfm %>%
  filter(recency < 7) %>%
  ggplot(aes(x=frequency, y=monetary)) +
  geom_point()

# average recency of high spenders who shop frequently
cust_rfm %>%
  filter(frequency > quantile(cust_rfm$frequency, 0.7)) %>%
  filter(monetary > quantile(cust_rfm$monetary, 0.7)) %>%
  summarize(rec = mean(recency))
