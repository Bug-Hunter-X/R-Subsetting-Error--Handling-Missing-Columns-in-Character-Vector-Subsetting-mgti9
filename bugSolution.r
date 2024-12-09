```r
# This improved code uses dplyr to safely subset the data frame, handling cases where specified columns are missing.

library(dplyr)

df <- data.frame(A = 1:3, B = 4:6, C = 7:9)
cols_to_select <- c("A", "B", "D") # 'D' is not a column in df

subset_df <- df %>% select(all_of(cols_to_select))

print(subset_df) # No error, missing columns are simply omitted

#Alternative using base R
subset_df <- df[, intersect(names(df), cols_to_select), drop = FALSE]
print(subset_df)
```