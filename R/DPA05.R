# Write an R program to read n numbers.
# (i) Total number of odd numbers.
# (ii) Sum of all odd numbers.


n <- as.integer(readline("Enter the value of n: "))
nums <- integer(n)
for (i in 1:n) {
    nums[i] <- as.integer(readline(paste("Enter number", i, ": ")))
}
odd_nums <- nums[nums %% 2 != 0]
cat("Total odd numbers =", length(odd_nums), "\n")
cat("Sum of all odd numbers =", sum(odd_nums), "\n")