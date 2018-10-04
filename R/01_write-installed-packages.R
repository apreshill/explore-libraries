## deja vu from earlier!

## create a data frame of your installed packages
## hint: installed.packages() is the function you need

library(tidyverse)
library(janitor)
ipt <- installed.packages() %>%
  as_tibble() %>%
  clean_names()

glimpse(ipt)

## optional: select just some of the variables, such as
##   * Package
##   * LibPath
##   * Version
##   * Priority
##   * Built

## write this data frame to data/installed-packages.csv
## hint: readr::write_csv() or write.table()
## idea: try using here::here() to create the file path

write_csv(ipt, here::here("data", "installed-packages.csv"))

## YES overwrite the file that is there now (or delete it first)
## that came from me (Jenny)
## it an example of what yours should look like and where it should go
