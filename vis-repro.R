library(readr)
library(ggplot2)
library(dplyr)

df <- readr::read_csv('data/streamer_data.csv')

ggplot2::ggplot(data = df,
                aes(x = active_days_per_week)) + 
  geom_histogram() +
  facet_wrap(~target)
