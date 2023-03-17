#### Preamble ####
# Purpose: Simulates education data to sketch the intended dataset
# Authors: Will Davidson, Syed Hassan
# Data: 16 March 2023
# Contact: syed.ext@gmail.com
# License: MIT
# Pre-requisites: The saved raw file 'inputs/data/raw_data.csv', library: "tidyverse", "reader", "here"


#### Workspace setup ####

install.packages("tidyverse")
install.packages("readr")
install.packages("here")

library(tidyverse)
library(readr)
library(here)

# import raw data for testing
test_clean_data <- read_csv(
  here::here("outputs/data/clean_data.csv"),
  show_col_types = FALSE
)


#### Test data ####

# checking the cleaned column names
head(test_clean_data)

# checking if the data class a data frame
test_clean_data |> 
  class()

# checking if the degree data has empty cells 
test_clean_data$degree |> 
  is.null()

# checking the unique values within the degree column
test_clean_data$degree |> 
  unique()

# checking the unique values within the sex column
test_clean_data$sex |> 
  unique()

# checking the unique race within the race column
test_clean_data$race |> 
  unique()


