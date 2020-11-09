library(mosaic)
library(tidyverse)
Homicide <- readr::read_csv(
  "homicide-data.csv"
) %>%
  mutate(year = substr(reported_date, 1, 4),
         day_of_month = substr(reported_date, nchar(reported_date) - 2 + 1, nchar(reported_date)),
         month = substr(reported_date, start = 5, stop = 6)) %>%
  select(-reported_date, -uid)

usethis::use_data(Homicide, overwrite = TRUE)
