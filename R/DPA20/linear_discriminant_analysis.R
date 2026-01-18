# ***INSTALL PACKAGE***
# One time Installation
# Type in R terminal
#   : install.packages("MASS")
# Choose a CRAN mirror if asked

library(MASS)

# Built-in iris Dataset
# Predictor variables: Sepal.Length, Sepal.Width, Petal.Length, Petal.Width
# Class label: Species

# # Data Preparation
iris_df <- iris[complete.cases(iris), ]

# Build LDA Model
lda_model <- lda(
    Species ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width,
    data = iris_df
)
lda_predict <- predict(lda_model)$class

# Confusion Matrix and Accuracy
confusion_matrix <- table(
    Predicted = lda_predict,
    Actual = iris_df$Species
)
accuracy <- mean(lda_predict == iris_df$Species)
print(confusion_matrix)
print(accuracy)

# Plot LDA
png("./R/DPA20/fig_01_linear_discriminant_analysis.png")
plot(
    lda_model,
    col = as.numeric(iris_df$Species),
    pch = 19,
    main = "Iris LDA Classification"
)
legend(
    "topright",
    legend = levels(iris_df$Species),
    col = 1:3,
    pch = 19,
    title = "Species"
)
dev.off()
cat("Saved as \"fig_01_linear_discriminant_analysis.png\"\n")


# ***OUTPUT***
#             Actual
# Predicted    setosa versicolor virginica
#   setosa         50          0         0
#   versicolor      0         48         1
#   virginica       0          2        49
# [1] 0.98
# Saved as "fig_01_linear_discriminant_analysis.png"