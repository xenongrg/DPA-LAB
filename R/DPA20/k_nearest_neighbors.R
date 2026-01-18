# ***INSTALL PACKAGE***
# One time Installation
# Type in R terminal
#   : install.packages("class")
# Choose a CRAN mirror if asked

library(class)

# Built-in iris Dataset
# Predictor variables: Sepal.Length, Sepal.Width, Petal.Length, Petal.Width
# Class label: Species

# Data Preparation
iris_x <- iris[, 1:4]
iris_y <- iris$Species
iris_scaled <- scale(iris_x)

# Split Data into Training and Testing
index <- sample(seq_len(nrow(iris)), 0.7 * nrow(iris))
train_x <- iris_scaled[index, ]
test_x <- iris_scaled[-index, ]
train_y <- iris_y[index]
test_y <- iris_y[-index]

#Build KNN Model
knn_predict <- knn(
    train = train_x,
    test = test_x,
    cl = train_y,
    k = 5
)

# Confusion Matrix and Accuracy
confusion_matrix <- table(
    Predicted = knn_predict,
    Actual = test_y
)
accuracy <- mean(knn_predict == test_y)

print(confusion_matrix)
print(accuracy)


# ***OUTPUT***
# NOTE: Output varies due to random sample of train-test
#             Actual
# Predicted    setosa versicolor virginica
#   setosa         16          0         0
#   versicolor      0         13         3
#   virginica       0          1        12
# [1] 0.9111111