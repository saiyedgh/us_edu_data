#### Preamble ####
# Purpose: Simulates education data to sketch the intended dataset
# Author: Laura Lee-Chu, Will Davidson, and Syed Hassan
# Data: 16 March 2023
# Contact: syed.ext@gmail.com
# License: MIT
# Pre-requisites: Data script from GSS 'inputs/data/GSS/GSS.r', library: "foreign", "here"

#### Workspace setup ####

install.packages("foreign")
install.packages("here")

library(foreign)
library(here)

#### Download data ####

read.dct <- function(dct, labels.included = "yes") {
  temp <- readLines(dct)
  temp <- temp[grepl("_column", temp)]
  switch(labels.included,
         yes = {
           pattern <- "_column\\(([0-9]+)\\)\\s+([a-z0-9]+)\\s+(.*)\\s+%([0-9]+)[a-z]\\s+(.*)"
           classes <- c("numeric", "character", "character", "numeric", "character")
           N <- 5
           NAMES <- c("StartPos", "Str", "ColName", "ColWidth", "ColLabel")
         },
         no = {
           pattern <- "_column\\(([0-9]+)\\)\\s+([a-z0-9]+)\\s+(.*)\\s+%([0-9]+).*"
           classes <- c("numeric", "character", "character", "numeric")
           N <- 4
           NAMES <- c("StartPos", "Str", "ColName", "ColWidth")
         })
  temp_metadata <- setNames(lapply(1:N, function(x) {
    out <- gsub(pattern, paste("\\", x, sep = ""), temp)
    out <- gsub("^\\s+|\\s+$", "", out)
    out <- gsub('\"', "", out, fixed = TRUE)
    class(out) <- classes[x] ; out }), NAMES)
  temp_metadata[["ColName"]] <- make.names(gsub("\\s", "", temp_metadata[["ColName"]]))
  temp_metadata
}

read.dat <- function(dat, metadata_var, labels.included = "yes") {
  read.fwf(dat, widths = metadata_var[["ColWidth"]], col.names = metadata_var[["ColName"]])
}

GSS_metadata <- read.dct("inputs/data/GSS/GSS.dct")
GSS_ascii <- read.dat("inputs/data/GSS/GSS.dat", GSS_metadata)
attr(GSS_ascii, "col.label") <- GSS_metadata[["ColLabel"]]
GSS <- GSS_ascii


#### Save data ####
write_csv(
  x = xl_data,
  file = here::here("inputs/data/raw_data.csv"),
)

