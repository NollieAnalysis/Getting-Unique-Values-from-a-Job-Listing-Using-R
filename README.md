# Getting-Unique-Values-from-a-Job-Listing-Using-R

# Project objectives:

Use R to list all unique values from a job listing. These unique values can be studied or added to your resume / CV.

# R packages used:

`readr`: This package is used for reading CSV files. It provides the `read_csv()` function.

`dplyr`: This package is used for data manipulation tasks. It provides functions like `%>%` (pipe operator), `pivot_longer()`, `distinct()`, and others.

`tibble`: Although not explicitly mentioned, `tibble` is a part of the `tidyverse` and is often loaded implicitly when loading `dplyr` or `tidyr`.

`stringr`: Although not explicitly mentioned, `stringr` is a part of the `tidyverse` and is often loaded implicitly when loading `dplyr` or `tidyr`.

`utils`: This is a base R package that provides general utility functions. It's used for setting and getting the working directory (`getwd()`, `setwd()`).

Make sure you have these packages installed in your R environment to execute the code successfully. If any of these packages are not installed, you can install them using the `install.packages()` function, e.g. `install.packages("dplyr")`.

# R functions used:

`getwd()`: This function retrieves the current working directory.

`setwd()`: This function sets the working directory to a specified path.

`read_csv()`: This function reads a CSV file into a data frame.

`View()`: This function opens a data frame in a separate viewer window.

`%>%` (pipe operator): This operator is used for chaining multiple function calls together, commonly used in the context of the `dplyr` package.

`pivot_longer()`: This function is used to reshape (pivot) data from wide to long format, transforming multiple columns into two columns: one containing variable names and another containing values.

`as.data.frame()`: This function converts an object to a data frame.

`matrix()`: This function creates a matrix with given data.

`unlist()`: This function flattens a list or vector by removing any nested structure.

`colnames()`: This function retrieves or sets the column names of a data frame.

`na.omit()`: This function removes rows with missing values (NAs) from a data frame.

`distinct()`: This function removes duplicate rows from a data frame.

`write.csv()`: This function writes a data frame to a CSV file.

These functions are used for various tasks such as data import, manipulation, reshaping, cleaning, and export.











