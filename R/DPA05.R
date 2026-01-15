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


# ***OUTPUT***
# Enter the value of n: 4
# Enter number 1 : 6
# Enter number 2 : 5
# Enter number 3 : 7
# Enter number 4 : 8
# Total odd numbers = 2
# Sum of all odd numbers = 12