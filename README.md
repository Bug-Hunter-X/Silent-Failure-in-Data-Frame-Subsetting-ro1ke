# Silent Failure in R Data Frame Subsetting

This repository demonstrates a subtle bug in R related to subsetting data frames. When you attempt to select columns that don't exist, the code fails silently instead of throwing an error. This can be problematic, especially in larger projects where such errors are harder to identify.

## Bug Description
The `bug.R` file contains code that attempts to subset a data frame using a character vector of column names. If any of the names in the vector do not correspond to existing columns in the data frame, the code does not throw an error. Instead, it silently drops the nonexistent columns and returns a subset that's smaller than intended, without any warning.

## Solution
The `bugSolution.R` file provides a corrected version that uses more robust methods to handle this issue, ensuring that any missing columns result in an error and halt execution.