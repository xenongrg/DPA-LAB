# Write an R program to read n numbers.
# (i) Sum of all even numbers.
# (ii) Total number of even numbers.


n <- as.integer(readline("Enter the value of n: "))
nums <- integer(n)
for (i in 1:n) {
    nums[i] <- as.integer(readline(paste("Enter number", i, ": ")))
}
even_nums <- nums[nums %% 2 == 0]
cat("Sum of all even numbers:", sum(even_nums), "\n")
cat("Total number of even numbers:", length(even_nums), "\n")