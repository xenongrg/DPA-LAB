# Generate a simple dataset using a linear relationship:
# y = 2 * x + (noise)
x <- rnorm(50)
y <- 2 * x + rnorm(50)
sim_data <- data.frame(x, y)

# K-Fold Cross-Validation Implementation
k <- 5
folds <- sample(rep(1:k, length.out = n))
kfold_errors <- numeric(k)
for (i in 1:k) {
    train_data <- sim_data[folds != i, ]
    test_data  <- sim_data[folds == i, ]
    model <- lm(y ~ x, data = train_data)
    pred  <- predict(model, test_data)
    kfold_errors[i] <- mean((test_data$y - pred)^2)
}
kfold_mse <- mean(kfold_errors)
print(kfold_mse)