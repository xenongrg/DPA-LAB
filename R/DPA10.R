# Write an R program that use both recursive and non-recursive functions
# for implementing the Factorial of a given number, n.


non_recur_factorial <- function(n) {
    fact <- 1
    for (i in 1:n) {
        fact <- fact * i
    }
    return(fact)
}

recur_factorial <- function(n) {
    if (n == 0 || n == 1) {
        return(1)
    }
    return(n * recur_factorial(n - 1))
}


n <- as.integer(readline("Enter the value of n: "))
cat("Non-Recursive Factorial Value:", non_recur_factorial(n), "\n")
cat("Recursive Factorial Value:", recur_factorial(n), "\n")