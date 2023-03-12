#### Preamble ####
# Purpose: Downloads and saves the data from [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Data: 11 February 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...remotes  drat kjhealy/gssr...]
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
# [...UPDATE THIS...]

#### Download data ####
# [...ADD CODE HERE TO DOWNLOAD...]Basic check



#### Save data ####
# [...UPDATE THIS...]
# change the_raw_data to whatever name you assigned when you downloaded it.


library(foreign)
library(here)
library(readr)
library(dplyr)
library(tidyverse)
library(readxl)


xl_data = read_excel('inputs/data/GSS/GSS.xlsx')

clean_data <- xl_data |> 
  select(year, id_, age, degree, sex, race) |> 
  filter(year > 1997) |> 
  filter(year < 2019)


ggplot(mtcars, aes(x=wt, y=mpg)) + geom_point()

? SELECT

# GSS_metadata <- read.dct(here::here("inputs/data/GSS/GSS.dct"))
# GSS_ascii <- read.dat(here::here("inputs/data/GSS/GSS.dat"), GSS_metadata)
# attr(GSS_ascii, "col.label") <- GSS_metadata[["ColLabel"]]
# GSS <- GSS_ascii |>
#   select(BALLOT, HAPPY, GIVHMLSS, DIRECTNS, YEAR)
# 
# write_csv(
#   x = GSS,
#   file = here::here("inputs/data/raw_data.csv"),
# )

# remotes::install_github("kjhealy/gssr")
# 
# if (!require("drat")) {
#   install.packages("drat")
#   library("drat")
# }
# 
# 
# drat::addRepo("kjhealy")
# 
# library(gssr)
# library(tidyverse)
# 
# gss18 <- gss_get_yr(2018)
# 
# gss18
# 
# data(gss_all)
# 
# gss_all
# 
# data(gss_doc)
# gss_doc
# 
# gss_doc %>% filter(id == "degree") %>%
#   select(id, description, text)
# 
# test_data_id <- gss_doc[[3]][[1]]
# 
# test_data_01 <- gss_get_marginals(varnames = c("degree", "race", "sex"))

# gss_doc |>
#  gss_get_props(varnames = c("id", "age", "degree", "sex", "race", "region"))

# test comment

#write_csv(the_raw_data, "inputs/data/raw_data.csv") 
         