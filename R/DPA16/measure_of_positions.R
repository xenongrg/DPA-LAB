data <- c(10, 13, 15, 18, 18, 22, 22, 22, 30, 40)

cat("Quartiles:\n")
print(quantile(data))

cat("\nDeciles:\n")
print(quantile(data, probs = seq(0, 1, 0.1)))

cat("\nPercentile:\n")
print(quantile(data, probs = c(0.25, 0.50, 0.75)))


# ***OUTPUT***
# Quartiles:
#    0%   25%   50%   75%  100%
# 10.00 15.75 20.00 22.00 40.00

# Deciles:
#   0%  10%  20%  30%  40%  50%  60%  70%  80%  90% 100%
# 10.0 12.7 14.6 17.1 18.0 20.0 22.0 22.0 23.6 31.0 40.0

# Percentile:
#   25%   50%   75%
# 15.75 20.00 22.00