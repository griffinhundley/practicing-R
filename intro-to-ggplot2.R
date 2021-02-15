# imports
library(readr)
library(ggplot2)
library(dplyr)

# read data
streamer_data <- readr::read_csv('data/streamer_data.csv')
streamer_data

# data slicing
streamer_data[1,]
streamer_data[,7]
streamer_data$login[1]
base::sum(2,3)
dplyr::select(streamer_data, login)
dplyr::select(streamer_data, starts_with('a'))
streamer_data$login
streamer_data %>% select(login)
streamer_data %>% filter(login == 'xqcow')

# data visualization
ggplot2::ggplot(streamer_data,
                aes(x = hours_streamed,
                    y = view_count,
                    color = target)) + 
  ggplot2::geom_point() +
  ggplot2::facet_wrap(~language) +
  ggplot2::labs(title = 'View count by hours streamed',
                subtitle = "Language",
                x = "Hours Streamed",
                y = 'Count')
