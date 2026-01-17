# Built-in iris Dataset
# Numeric Variables Only

# Data Preparation
iris_data <- iris[, sapply(iris, is.numeric)]
iris_df <- iris_data[complete.cases(iris_data), ]

# Build K-Means Cluster
iris_kmean <- kmeans(
    iris_df,
    centers = 3
)

# Plot K-Means Cluster
png("./R/DPA18/fig_01_k_means_clustering.png")
plot(
    iris_df[, 1:2],             # Plots the first two columns
    col = iris_kmean$cluster,   # Colors each point w.r.t. cluster membership
    pch = 19,
    main = "Iris K-Means Cluster",
    xlab = "Sepal Length",
    ylab = "Sepal Width"
)
points(
    iris_kmean$centers[, 1:2],  # Adds cluster centroids to the existing plot
    col = 1:3,                  # Colors centroids using three different colors
    pch = 8,                    # pch = 8 represents a star symbol
    cex = 2                     # cex = character expansion; 2 = twice as large
)
dev.off()
cat("Saved as \"fig_01_k_means_clustering.png\"\n")