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

install.packages("here")
install.packages("readr")

library(here)
library(readr)


# GSS_metadata <- read.dct(here::here("inputs/data/GSS/GSS.dct"))
# GSS_ascii <- read.dat(here::here("inputs/data/GSS/GSS.dat"), GSS_metadata)
# attr(GSS_ascii, "col.label") <- GSS_metadata[["ColLabel"]]
# GSS_Data <- GSS_ascii
# 
# head(GSS_Data)


xl_data = read_excel('inputs/data/GSS/GSS.xlsx')
head(xl_data)

write_csv(
  x = xl_data,
  file = here::here("inputs/data/raw_data.csv"),
)

