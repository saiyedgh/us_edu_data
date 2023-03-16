#### Preamble ####
# Purpose: Simulates education data to sketch the intended dataset
# Author: Laura Lee-Chu, Will Davidson, and Syed Hassan
# Data: 16 March 2023
# Contact: syed.ext@gmail.com
# License: MIT
# Pre-requisites: R Studio


#### Workspace setup ####

# create a sample column with unique ids
id_column <- sample(x = 89:98)

# a column with sample year data
year_column <- sample(x = 2000:2020, size = 10, replace = TRUE)

# a column with degree types
degree_column <- sample(x = c("High School", "Primary School", "Diploma", "Bachelors", "Masters"), size = 10, replace = TRUE) 

# a column with sex data
sex_column <- sample(x = c("Male", "Female", "Other"), size = 10, replace = TRUE) 

# a column with sex data
race_column <- sample(x = c("White", "Black", "Brown", "Native"), size = 10, replace = TRUE) 


#### Simulate data ####

# creates a data frame with column names being populated with the respective column variables
simulation_01 <- data.frame("id" = id_column,
                            "year" = year_column,
                            "degree" = degree_column,
                            "sex" = sex_column,
                            "race" = race_column)

# calls in the data frame
simulation_01





