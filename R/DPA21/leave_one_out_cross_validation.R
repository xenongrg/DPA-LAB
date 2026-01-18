# Generate a simple dataset using a linear relationship:
# y = 2 * x + (noise)
x <- rnorm(50)
y <- 2 * x + rnorm(50)
sim_data <- data.frame(x, y)

# LOOCV Implementation
n <- nrow(sim_data)
loocv_errors <- numeric(n)
for (i in 1:n) {
    train_data <- sim_data[-i, ]
    test_data  <- sim_data[i, ]
    model <- lm(y ~ x, data = train_data)
    pred  <- predict(model, test_data)
    loocv_errors[i] <- (test_data$y - pred)^2
}
loocv_mse <- mean(loocv_errors)
print(loocv_mse)