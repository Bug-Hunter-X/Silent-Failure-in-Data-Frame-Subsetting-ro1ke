```R
# This code attempts to subset a data frame using a character vector of column names,
# but it fails silently if any of the specified columns don't exist.

df <- data.frame(a = 1:3, b = 4:6, c = 7:9)
cols_to_select <- c("a", "b", "d")  # 'd' does not exist

subset_df <- df[, cols_to_select]
print(subset_df)
```