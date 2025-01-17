```R
# This corrected code uses `dplyr::select` which throws an error if any of the columns are not found.

library(dplyr)

df <- data.frame(a = 1:3, b = 4:6, c = 7:9)
cols_to_select <- c("a", "b", "d")  # 'd' does not exist

tryCatch({
  subset_df <- df %>% select(all_of(cols_to_select))
  print(subset_df)
}, error = function(e) {
  cat("Error: ", e$message, "\n")
})

# Alternatively using base R with more explicit error handling
cols_exist <- cols_to_select %in% names(df)

if(all(cols_exist)){
  subset_df <- df[, cols_to_select]
  print(subset_df)
} else {
  missing_cols <- cols_to_select[!cols_exist]
  stop(paste("Columns not found:", paste(missing_cols, collapse = ", ")))
}
```