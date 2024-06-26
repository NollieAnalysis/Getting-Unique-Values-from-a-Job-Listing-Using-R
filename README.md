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

# Project deliverables:

First save job listing as a csv file and then use below code to get a clean list of unique values saved as another csv file.

```R
# Check working directory
getwd()

# Set your working directory for uploading CSV (if applicable)
setwd()  # add file path here

# Install applicable packages
install.packages()  # add package names here

# Upload and view CSV file
df <- read_csv(".csv")  # name of CSV file here
View(df)

# Combine columns
ad_columns_combined <- df %>%
  pivot_longer(cols = everything(), names_to = "combined_column", values_to = "value")
ad_columns_combined

# Combine columns option two
combined_column <- as.data.frame(matrix(unlist(df), ncol = 1))
colnames(combined_column) <- "Combined_Column"
combined_column

# Remove NAs
removed_na_combined_column <- na.omit(combined_column)
removed_na_combined_column

# Remove duplicates
no_duplicates <- removed_na_combined_column %>%
  distinct(Combined_Column, .keep_all = TRUE)
no_duplicates

# Export final data frame to CSV
file.path <- ".csv"  # name output file
write.csv(no_duplicates, file = file.path, row.names = FALSE)
```

# csv file before

![csv before](https://github.com/NollieAnalysis/Getting-Unique-Values-from-a-Job-Listing-Using-R/assets/163913188/c13e175b-64d6-4ffc-afad-646b3c7943a9)

# csv file after

![csv after](https://github.com/NollieAnalysis/Getting-Unique-Values-from-a-Job-Listing-Using-R/assets/163913188/469eedec-3695-46b5-bffd-bf846dcf76d3)
