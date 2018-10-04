## remember to restart R here!

## create a data frame by reading from data/installed-packages.csv
## hint: readr::read_csv() or read.csv()
## idea: try using here::here() to create the file path

library(tidyverse)
library(janitor)

apt <- read_csv(here::here("data", "installed-packages.csv")) %>%
## filter out the base and recommended packages
  filter(is.na(priority)) %>%
## keep the variables Package and Built
  select(package, built)



## write this new, smaller data frame to data/add-on-packages.csv
## hint: readr::write_csv() or write.table()
## idea: try using here::here() to create the file path
write_csv(apt, here::here("data", "add-on-packages.csv"))

## make a frequency table of package by the version in Built
apt %>%
  count(built) %>%
  mutate(prop = n / sum(n))

# or
apt_freqtable <- apt %>%
  tabyl(built)



## write this data frame to data/add-on-packages-freqtable.csv
## hint: readr::write_csv() or write.table()
## idea: try using here::here() to create the file path
write_csv(apt_freqtable, here::here("data", "add-on-packages-freqtable.csv"))

## YES overwrite the files that are there now
## they came from me (Jenny)
## they are just examples
