#### Preamble ####
# Purpose: Simulates education data to sketch the intended dataset
# Author: Laura Lee-Chu, Will Davidson, and Syed Hassan
# Data: 16 March 2023
# Contact: syed.ext@gmail.com
# License: MIT
# Pre-requisites: The saved raw file 'inputs/data/raw_data.csv', library: "tidyverse", "janitor", "reader", "here"


#### Workspace setup ####

install.packages("tidyverse")
install.packages("janitor")
install.packages("readr")
install.packages("here")

library(tidyverse)
library(janitor)
library(readr)
library(here)


#### Clean data ####

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