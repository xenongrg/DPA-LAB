# ***BOX PLOT***
data <- c(10, 13, 15, 18, 18, 22, 22, 22, 30, 40)
png("./R/DPA16/fig_01_box_plot.png")
boxplot(
    data,
    horizontal = TRUE,
    col = "lightblue",
    main = "Horizontal Box Plot",
    xlab = "Values",
    pch = 16
)
dev.off()
cat("Saved as \"fig_01_box_plot.png\"\n")


# ***COMPARISON USING BOX PLOT***
data01 <- c(5, 12, 18, 35, 50)
data02 <- c(10, 15, 20, 25, 30)
png("./R/DPA16/fig_02_comparison_using_box_plot.png")
boxplot(
    data01, data02,
    horizontal = TRUE,
    names = c("Data 01", "Data 02"),
    main = "Comparison Using Box Plot",
    col = c("lightgreen", "lightblue")
)
dev.off()
cat("Saved as \"fig_02_comparison_using_box_plot.png\"\n")