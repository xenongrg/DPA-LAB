# ***INSTALL PACKAGE***
# install.packages("rpart")
# install.packages("rpart.plot")


library(rpart)
library(rpart.plot)

# Built-in iris Dataset
# Target Variable: Species (categorical)

# Data Preperation
iris_df <- iris[complete.cases(iris), ]

# Build Classification Tree
iris_class_tree <- rpart(
    Species ~ .,
    data = iris_df,
    method = "class"
)

# Plot Classification Tree
png("./R/DPA17/fig_01_classification_tree.png")
rpart.plot(
    iris_class_tree,
    main = "Iris Species Prediction"
)
dev.off()
cat("Saved as \"fig_01_classification_tree.png\"\n")