#### Preamble ####
# Purpose: Cleans.... [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Data: 11 February 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
library(tidyverse)
library(janitor)
library(readr)
library(here)
# [...UPDATE THIS...]

#### Clean data ####
# [...UPDATE THIS...]
raw_data <- read_csv(
  here::here("inputs/data/raw_data.csv"),
  show_col_types = FALSE
)

filter_data <- raw_data |> 
  filter(year >= 1998) |>
  filter(year <= 2018)

clean_data <- filter_data |> 
  clean_names()

# checking the cleaned column names
head(clean_data)

# checking if the data is a data frame
clean_data |> 
  class()

#### Save data ####
# [...UPDATE THIS...]
# change cleaned_data to whatever name you end up with at the end of cleaning
write_csv(
  x = clean_data,
  file = here::here("outputs/data/clean_data.csv"),
)