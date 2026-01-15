# Write an R program to find the sum of n natural numbers: 1+2+3+4+…+n.


n <- as.numeric(readline("Enter the value of n: "))
sum <- 0
for (i in 1:n) {
    sum <- sum + i
}
cat("Sum of 1 to", n, "=", sum, "\n")


# ***OUTPUT***
# Enter the value of n: 4
# Sum of 1 to 4 = 10