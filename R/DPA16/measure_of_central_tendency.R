get_mode <- function(data) {
    mode_str <- (
        data |>                         # Data Pipelining "|>""
            table() |>
            sort(decreasing = TRUE) |>
            names()
    )[1]
    as.numeric(mode_str)
}


data <- c(10, 13, 15, 18, 18, 22, 22, 22, 30, 40)
cat("Mean :", mean(data), "\n")
cat("Median :", median(data), "\n")
cat("Mode :", get_mode(data), "\n")


# ***OUTPUT***
# Mean : 21
# Median : 20
# Mode : 22