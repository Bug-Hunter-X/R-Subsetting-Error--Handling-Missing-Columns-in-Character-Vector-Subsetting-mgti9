# R Subsetting Error: Handling Missing Columns in Character Vector Subsetting

This repository demonstrates a common error in R when subsetting data frames using a character vector of column names.  If any specified column names are missing, the standard subsetting operation will throw an error.  The solution shows how to handle this gracefully.

## The Bug
The `bug.r` file contains R code that attempts to subset a data frame using a character vector.  However, one of the specified column names doesn't exist, resulting in an error.

## The Solution
The `bugSolution.r` file provides a robust solution using `dplyr::select()` which handles missing columns without causing an error. It also explains the safe way to subset using base R.