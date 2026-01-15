# Write an R program to implement
# (i)Linear search.
# (ii) Binary Search.


unsorted_arr <- c(40, 20, 50, 60, 90, 10, 30, 80, 100, 70)
arr_len <- length(unsorted_arr)
repeat {
    cat("Enter\t1 for Linear Search\n\t2 for Binary Search\n")
    x <- as.integer(readline())
    if (x == 1 || x == 2) {
        break
    } else {
       cat("ERROR!!! Enter a Valid Input.\n")
    }
}
key <- as.integer(readline("Enter element to search: "))
found <- FALSE
if (x == 1) {
    print(unsorted_arr)
    for (i in 1:arr_len) {
        if (unsorted_arr[i] == key) {
            cat("Element found at position:", i, "\n")
            found <- TRUE
            break
        }
    }
} else {
    sorted_arr <- sort(unsorted_arr)
    print(sorted_arr)
    low <- 1
    high <- arr_len
    while (low <= high) {
        mid <- floor((low + high) / 2)
        if (sorted_arr[mid] == key) {
            cat("Element found at position:", mid, "\n")
            found <- TRUE
            break
        } else if (sorted_arr[mid] < key) {
           low <- mid + 1
        } else {
           high <- mid - 1
        }
   }
}
if(!found) {
    cat("Element not found.\n")
}


# ***OUTPUT***
# Enter   1 for Linear Search
#         2 for Binary Search
# 1
# Enter element to search: 30
#  [1]  40  20  50  60  90  10  30  80 100  70
# Element found at position: 7

# ***OUTPUT***
# Enter   1 for Linear Search
#         2 for Binary Search
# 1
# Enter element to search: 55
#  [1]  40  20  50  60  90  10  30  80 100  70
# Element not found.

# ***OUTPUT***
# Enter   1 for Linear Search
#         2 for Binary Search
# 2
# Enter element to search: 60
#  [1]  10  20  30  40  50  60  70  80  90 100
# Element found at position: 6

# ***OUTPUT***
# Enter   1 for Linear Search
#         2 for Binary Search
# 2
# Enter element to search: 55
#  [1]  10  20  30  40  50  60  70  80  90 100
# Element not found.