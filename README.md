# TITLE


This code repository is for the analysis of Education in the United States using the data from NORC's (National Opinion Research Center — University of Chicago) General Social Survey (GSS). The aim of this study was to analyze the education levels with sex and race data to draw meaningful inferences and insights. 

> **Note**<br>
> The analysis is available at: [here](https://github.com/saiyedgh/us_edu_data/blob/main/outputs/paper/analysis.pdf).

## File Structure

The repo is structured as:
-   `input/data` contains the data sources used in analysis including the raw data.
-   `input/data/GSS` includes the raw files from GSS with the script to download data from GSS
-   `outputs/data` contains the cleaned dataset that was constructed.
-   `outputs/paper` contains the files used to generate the paper, including the Quarto document and reference bibliography file, as well as the PDF of the paper. 
-   `scripts` contains the R scripts used to simulate, download and clean data.

## Getting Started

### Requirements

This project requires was created using the [R programming language](https://www.r-project.org/) with [Quarto](https://quarto.org/docs/get-started/).

### Download the data
> **Note**<br>
The data from GSS can be reproduced either by using the script `inputs/data/GSS/GSS.r` with appropriate files `inputs/data/GSS/GSS.dat` and `inputs/data/GSS/GSS.dct`.

The data was prepared, cleaned, and documented using a list of tools and packages:
* *`R`*, a statistical programming language.
* *`R Studio`*
* *`Quarto`* — a new version of *`R Markdown`*.
* *`here`* to access tabular files.
* *`Tidyverse`*, the main R library for data manipulation.
* *`dplyr`*, a part of Tidyverse to enable query-like syntax.
* *`janitor`* to clean names and data.
* *`ggplot`* to create graphs and charts.
* *`scales`* to customize ggplot graphs.
* *`knitr`* with *`kableExtra`* to create tables.


The data used in project is from [General Social Survey](https://gssdataexplorer.norc.org), and more specificallt is four variables from the main dataset:

- [Year](https://gssdataexplorer.norc.org/variables/1/vshow)
- [Education](https://gssdataexplorer.norc.org/variables/59/vshow)
- [Sex](https://gssdataexplorer.norc.org/variables/81/vshow)
- [Race](https://gssdataexplorer.norc.org/variables/82/vshow)


### Data analysis

The core data analysis of this project occurs in the `outputs/paper/analysis.qmd` file, another Quarto document. Once you render `analysis.qmd`.


## Acknowledgments

Created by , Larua Lee-Chu, Will Davidson, and [Syed Hassan](https://sai-yed.com).It Contains information from [General Social Survey (GSS)](https://gssdataexplorer.norc.org/), a project of the independent research organization [NORC](https://norc.org/) at the [University of Chicago](https://www.uchicago.edu/), with principal funding from the [National Science Foundation](https://www.nsf.gov/). Created using [R](https://www.r-project.org/), an open-source statistical programming language.

