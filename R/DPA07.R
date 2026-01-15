# Write an R program for "declaring and defining functions"


factorial_user <- function(n) {
    fact <- 1
    for (i in 1:n) {
        fact <- fact * i
    }
    return(fact)
}


print(factorial_user(4))