# Data
lower_bound <- c(1, 5, 15, 20, 50, 80)
upper_bound <- c(5, 15, 20, 50, 80, 110)
frequency <- c(200, 450, 300, 1500, 700, 44)
# Cumulative frequency
cum_freq <- cumsum(frequency)
# Total frequency
N <- sum(frequency)
# Half of the total frequency
N_half <- N / 2
# Find the median class
median_index <- which(cum_freq >= N_half)[1]
# Median calculation
L <- lower_bound[median_index]
F <- ifelse(median_index == 1, 0, cum_freq[median_index - 1])
f <- frequency[median_index]
h <- upper_bound[median_index] - lower_bound[median_index]
median_value <- L + ((N_half - F) / f) * h
# Print the median value
median_value
