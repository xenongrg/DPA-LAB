# ***INSTALL PACKAGE***
# One time Installation
# Type in R terminal
#   : install.packages("moments")
# Choose a CRAN mirror if asked


library(moments)

data <- c(10, 13, 15, 18, 18, 22, 22, 22, 30, 40)
cat("Skewness :", skewness(data) |> round(3), "\n")
cat("Kurtosis :", kurtosis(data) |> round(3), "\n")


# ***OUTPUT***
# Skewness : 0.968
# Kurtosis : 3.357