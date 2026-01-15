# Write an R program uses functions to swap two integers.


swap_nums <- function(a, b) {
    temp <- a
    a <- b
    b <- temp
    return(c(a, b))
}


result <- integer(2)
result[1] <- as.integer(readline("Enter 1st number: "))
result[2] <- as.integer(readline("Enter 2nd number: "))
result <- swap_nums(result[1], result[2])
cat("After swapping:\n")
cat("1st number:", result[1], "\n")
cat("2nd number:", result[2], "\n")


# ***OUTPUT***
# Enter 1st number: 5
# Enter 2nd number: 9
# After swapping:
# 1st number: 9
# 2nd number: 5