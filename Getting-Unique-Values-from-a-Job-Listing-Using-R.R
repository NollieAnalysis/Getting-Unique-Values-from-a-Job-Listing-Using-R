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