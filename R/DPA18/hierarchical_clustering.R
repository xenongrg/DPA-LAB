# Built-in iris Dataset
# Numeric Variables Only

# Data Preparation
iris_data <- iris[, sapply(iris, is.numeric)]
iris_df <- iris_data[complete.cases(iris_data), ]
iris_dist_matrix <- dist(iris_df)

# Build Hierarchical Cluster
iris_hclust <- hclust(
    iris_dist_matrix,
    method = "complete"
)
iris_hclust_cutree <- cutree(
    iris_hclust,
    k = 3
)

# Plot Hierarchical Cluster
png("./R/DPA18/fig_02_hierarchical_clustering_dendogram.png")
plot(
    iris_hclust,
    main = "Iris Hierarchical Cluster Dendogram",
    xlab = "",
    sub = ""
)
dev.off()
cat("Saved as \"fig_02_hierarchical_clustering_dendogram.png\"\n")
png("./R/DPA18/fig_03_hierarchical_clustering_scatter_plot.png")
plot(
    iris_df[, 1:2],
    col = iris_hclust_cutree,
    pch = 19,
    main = "Iris Heirarchical Cluster",
    xlab = "Sepal Length",
    ylab = "Sepal Width"
)
dev.off()
cat("Saved as \"fig_03_hierarchical_clustering_scatter_plot.png\"\n")