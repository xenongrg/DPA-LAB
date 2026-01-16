x <- c(1, 2, 3, 4, 5)
y <- c(2, 4, 6, 8, 10)


# ***POINT PLOT***
png("./R/DPA15/fig_01_point_plot.png")      # create graph plot in ".png"
plot(x, y)
dev.off()       # stop drawing and save the plot [if png(), pdf() used.]
cat("Saved as \"fig_01_point_plot.png\"\n")


# ***LINE GRAPH***
png("./R/DPA15/fig_02_line_graph.png")
plot(
    x, y,
    main = "LINE GRAPH",
    sub = "Graphical Analysis",
    xlab = "X Axis",    # X-axis name
    ylab = "Y Axis",    # Y-axis name
    type = "o",         # draw both points and lines
    col = "blue",       # color of the plot elements
    lwd = 2,            # line width (thickness)
    pch = 16            # plotting character (16 for solid filled circle)
)
dev.off()
cat("Saved as \"fig_02_line_graph.png\"\n")


# ***CUSTOM AXES***
png("./R/DPA15/fig_03_custom_axes.png")
plot(
    x, y,
    main = "Custom Axes Graph",
    type = "o",
    col = "blue",
    xaxt = "n",         # suppress default X-axis
    yaxt = "n"          # suppress default Y-axis
)
axis(1, at = seq(0, 5, 0.5))    # new custom X-axis
axis(2, at = seq(0, 10, 1))     # new custom Y-axis
legend(
    "topleft",
    legend = "y = 2x",
    col = "blue",
    lwd = 2
)
dev.off()
cat("Saved as \"fig_03_custom_axes.png\"\n")