library(readr)
library(ggplot2)
library(dplyr)

df <- readr::read_csv('data/streamer_data.csv')

ggplot(df, aes(x=active_days_per_week, fill=broadcaster_type)) + 
  geom_density(alpha=.3) +
  labs(title = 'Days of Activity per Week',
       subtitle = 'By broadcaster type',
       x = 'number of days per week',
       y = 'frequency')
