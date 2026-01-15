# Write an R program to reverse the digits of the given number.
# {example 1234 to 4321}


num <- as.integer(readline("Enter a number: "))
rev_num <- 0
temp_num <- num
while (temp_num > 0) {
    rem <- temp_num %% 10
    rev_num <- rev_num * 10 + rem
    temp_num <- temp_num %/% 10
}
cat("Reverse of", num, "is :", rev_num, "\n")


# ***OUTPUT***
# Enter a number: 6578
# Reverse of 6578 is : 8756