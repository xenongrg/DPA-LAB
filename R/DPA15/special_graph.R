subjects <- c("Computer", "Maths", "Science", "English", "Social")
marks <- c(100, 100, 80, 60, 40)


# ***PIE CHART***
percent <- round(marks / sum(marks) * 100, 1)
pie_labels <- paste(subjects, ":", percent, "%")
png("./R/DPA15/fig_04_pie_chart.png")
pie(
    marks,
    labels = pie_labels,
    main = "Pie Chart"
)
dev.off()
cat("Saved as \"fig_04_pie_chart.png\"\n")


# ***BAR PLOT***
marks_name <- marks
names(marks_name) <- subjects
png("./R/DPA15/fig_05_bar_plot.png")
barplot(
    marks_name,
    main = "Bar Plot",
    xlab = "Subjects",
    ylab = "Marks"
)
dev.off()
cat("Saved as \"fig_05_bar_plot.png\"\n")


# ***HISTOGRAM***
data <- c(10, 12, 15, 20, 22, 25, 30, 32, 35)
png("./R/DPA15/fig_06_histogram.png")
hist(
    data,
    main = "Histogram",
    xlab = "Values"
)
dev.off()
cat("Saved as \"fig_06_histogram.png\"\n")


# ***SCATTER PLOT***
x <- c(0, 1, 2, 3, 4, 5, 6, 7, 8, 9)
y <- c(2, 3, 5, 6, 9, 9, 9, 11, 11, 12)
png("./R/DPA15/fig_07_scatter_plot.png")
plot(
    x, y,
    main = "Scatter Plot",
    xlab = "X Values",
    ylab = "Y Values",
    pch = 19,
    col = "blue",
    xaxt = "n",
    yaxt = "n"
)
axis(1, at = seq(0, 10, 1))
axis(2, at = seq(0, 16, 1))
dev.off()
cat("Saved as \"fig_07_scatter_plot.png\"\n")


# ***MULTIPLE PLOTS***
png("./R/DPA15/fig_08_multiple_plot.png")
par(mfrow = c(2, 2))
pie(
    marks,
    labels = pie_labels,
    main = "Pie Chart"
)
barplot(
    marks_name,
    main = "Bar Plot",
)
hist(
    data,
    main = "Histogram",
)
plot(
    x, y,
    main = "Scatter Plot",
    col = "blue",
)
par(mfrow = c(1, 1))
dev.off()
cat("Saved as \"fig_08_multiple_plot.png\"\n")