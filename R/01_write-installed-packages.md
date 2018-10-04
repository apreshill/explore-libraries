01\_write-installed-packages.R
================
alison
Thu Oct 4 14:32:23 2018

``` r
## deja vu from earlier!

## create a data frame of your installed packages
## hint: installed.packages() is the function you need

library(tidyverse)
```

    ## ── Attaching packages ──────────────────────────────── tidyverse 1.2.1 ──

    ## ✔ ggplot2 3.0.0     ✔ purrr   0.2.5
    ## ✔ tibble  1.4.2     ✔ dplyr   0.7.6
    ## ✔ tidyr   0.8.1     ✔ stringr 1.3.1
    ## ✔ readr   1.1.1     ✔ forcats 0.3.0

    ## ── Conflicts ─────────────────────────────────── tidyverse_conflicts() ──
    ## ✖ dplyr::filter() masks stats::filter()
    ## ✖ dplyr::lag()    masks stats::lag()

``` r
library(janitor)
ipt <- installed.packages() %>%
  as_tibble() %>%
  clean_names()

glimpse(ipt)
```

    ## Observations: 117
    ## Variables: 16
    ## $ package               <chr> "assertthat", "backports", "base", "base...
    ## $ lib_path              <chr> "/Library/Frameworks/R.framework/Version...
    ## $ version               <chr> "0.2.0", "1.1.2", "3.5.1", "0.1-3", "1.6...
    ## $ priority              <chr> NA, NA, "base", NA, NA, NA, NA, NA, "rec...
    ## $ depends               <chr> NA, "R (>= 3.0.0)", NA, "R (>= 2.9.0)", ...
    ## $ imports               <chr> "tools", "utils", NA, NA, NA, NA, "bindr...
    ## $ linking_to            <chr> NA, NA, NA, NA, NA, NA, "plogr, Rcpp", N...
    ## $ suggests              <chr> "testthat", NA, "methods", NA, NA, "test...
    ## $ enhances              <chr> NA, NA, NA, "png", NA, NA, NA, NA, NA, N...
    ## $ license               <chr> "GPL-3", "GPL-2", "Part of R 3.5.1", "GP...
    ## $ license_is_foss       <chr> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, ...
    ## $ license_restricts_use <chr> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, ...
    ## $ os_type               <chr> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, ...
    ## $ md5sum                <chr> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, ...
    ## $ needs_compilation     <chr> "no", "yes", NA, "yes", "no", "no", "yes...
    ## $ built                 <chr> "3.5.0", "3.5.0", "3.5.1", "3.5.0", "3.5...

``` r
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
```
