# Write an R program that uses functions to add n numbers reading from keyboard.


add_n_nums <- function(n) {
    sum <- 0
    for (i in 1:n) {
        num <- as.numeric(readline(paste("Enter number", i, ": ")))
        sum <- sum + num
    }
    return(sum)
}


n <- as.integer(readline("Enter the value of n: "))
result <- add_n_nums(n)
cat("Sum of", n, "numbers:", result, "\n")