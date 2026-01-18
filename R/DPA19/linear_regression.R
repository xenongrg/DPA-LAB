# Built-in cars Dataset
# speed -> Independent Variable
# dist -> Dependent Variable

# Data Preparation
cars_df <- cars[complete.cases(cars), ]

# Build Linear Regression
cars_df_lm <- lm(
    dist ~ speed,
    data = cars_df
)

# Display Model Summary
print(summary(cars_df_lm))

# Plot Regression Line
png("./R/DPA19/fig_01_linear_regression.png")
plot(
    cars_df$speed, cars_df$dist,
    main = "Linear Regression: Speed vs Distance",
    pch = 19,
    col = "blue",
    xlab = "Speed",
    ylab = "Distance"
)
abline(
    cars_df_lm,
    col = "red",
    lwd = 2
)
dev.off()
cat("Saved as \"fig_01_linear_regression.png\"\n")


# ***OUTPUT***
# Call:
# lm(formula = dist ~ speed, data = cars_df)

# Residuals:
#     Min      1Q  Median      3Q     Max
# -29.069  -9.525  -2.272   9.215  43.201

# Coefficients:
#             Estimate Std. Error t value Pr(>|t|)
# (Intercept) -17.5791     6.7584  -2.601   0.0123 *
# speed         3.9324     0.4155   9.464 1.49e-12 ***
# ---
# Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

# Residual standard error: 15.38 on 48 degrees of freedom
# Multiple R-squared:  0.6511,    Adjusted R-squared:  0.6438
# F-statistic: 89.57 on 1 and 48 DF,  p-value: 1.49e-12

# Saved as "fig_01_linear_regression.png"