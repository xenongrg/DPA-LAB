# Write an R program to implement
# (i) Bubble sort.
# (ii) Selection sort.


arr <- c(40, 20, 50, 60, 90, 10, 30, 80, 100, 70)
arr_len <- length(arr)
repeat {
    cat("Enter\t1 for Bubble Sort\n\t2 for Selection Sort\n")
    x <- as.integer(readline())
    if (x == 1 || x == 2) {
        break
    } else {
       cat("ERROR!!! Enter a Valid Input.\n")
    }
}
print(arr)
if (x == 1) {
    cat("***Bubble Sort***\n")
    for (i in 1:(arr_len - 1)) {
        for (j in 1:(arr_len - i)) {
            if (arr[j] > arr[j + 1]) {
                temp_num <- arr[j]
                arr[j] <- arr[j + 1]
                arr[j + 1] <- temp_num
            }
        }
        print(arr)
    }
} else {
    cat("***Selection Sort***\n")
    for (i in 1:(arr_len - 1)) {
        min_index <- i
        for (j in (i + 1):arr_len) {
            if (arr[min_index] > arr[j]) {
                min_index <- j
            }
        }
        temp_num <- arr[i]
        arr[i] <- arr[min_index]
        arr[min_index] <- temp_num
        print(arr)
    }
}