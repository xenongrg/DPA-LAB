# Built-in mtcars Dataset
# mpg -> Dependent Variable
# wt, hp, cyl -> Independent Variables

# Data Preparation
mtcars_df <- mtcars[complete.cases(mtcars), ]

# Build Linear Regression
mtcars_df_lm <- lm(
    mpg ~ wt + hp + cyl,
    data = mtcars_df
)
mpg_predict <- predict(mtcars_df_lm)

# Display Model Summary
print(summary(mtcars_df_lm))

# Plot Regression Line
png("./R/DPA19/fig_02_multiple_linear_regression.png")
plot(
    mtcars_df$mpg, mpg_predict,
    main = "MPG: Actual vs Predicted",
    pch = 19,
    col = "green",
    xlab = "Actual MPG",
    ylab = "Predicted MPG"
)
abline(
    0, 1,
    col = "red",
    lwd = 2
)
dev.off()
cat("Saved as \"fig_02_multiple_linear_regression.png\"\n")


# ***OUTPUT***
# Call:
# lm(formula = mpg ~ wt + hp + cyl, data = mtcars_df)

# Residuals:
#     Min      1Q  Median      3Q     Max
# -3.9290 -1.5598 -0.5311  1.1850  5.8986

# Coefficients:
#             Estimate Std. Error t value Pr(>|t|)
# (Intercept) 38.75179    1.78686  21.687  < 2e-16 ***
# wt          -3.16697    0.74058  -4.276 0.000199 ***
# hp          -0.01804    0.01188  -1.519 0.140015
# cyl         -0.94162    0.55092  -1.709 0.098480 .
# ---
# Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

# Residual standard error: 2.512 on 28 degrees of freedom
# Multiple R-squared:  0.8431,    Adjusted R-squared:  0.8263
# F-statistic: 50.17 on 3 and 28 DF,  p-value: 2.184e-11

# Saved as "fig_02_multiple_linear_regression.png"