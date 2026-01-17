data <- c(10, 13, 15, 18, 18, 22, 22, 22, 30, 40)

cat("Range :", diff(range(data)), "\n")
cat("Median Abs Deviation :", mad(data) |> round(3), "\n")
cat("Variance :", var(data), "\n")
cat("Standard Deviation :", sd(data) |> round(3), "\n")


# ***OUTPUT***
# Range : 30
# Median Abs Deviation : 5.189
# Variance : 76
# Standard Deviation : 8.718