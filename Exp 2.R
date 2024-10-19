# Data
ages <- c(13, 15, 16, 16, 19, 20, 20, 21, 22, 22, 25, 25, 25, 25, 30, 33, 33, 35, 35, 35, 35, 36, 40, 45, 46, 52, 70)
# (a) Mean and Median
mean_value <- mean(ages)
median_value <- median(ages)
# (b) Mode
mode_value <- as.numeric(names(sort(table(ages), decreasing=TRUE)[1]))  # most frequent value
# (c) Midrange
midrange_value <- (min(ages) + max(ages)) / 2
# (d) First (Q1) and Third Quartile (Q3)
Q1 <- quantile(ages, 0.25)
Q3 <- quantile(ages, 0.75)
# Output results
mean_value
median_value
mode_value
midrange_value
Q1
Q3
