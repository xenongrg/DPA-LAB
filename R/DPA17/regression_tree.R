library(rpart)
library(rpart.plot)

# Built-in mtcars Dataset
# Target Variable: mpg (continuous)

# Data Preparation
mtcars_df <- mtcars |>
    select(wt, hp, cyl, mpg) |>
    filter(
        !is.na(wt),
        !is.na(hp),
        !is.na(cyl),
        !is.na(mpg)
    )

# Build Regression Tree
mtcars_reg_tree <- rpart(
    mpg ~ wt + hp + cyl,
    data = mtcars_df,
    method = "anova"
)

# Plot Regression Tree
png("./R/DPA17/fig_02_regression_tree.png")
rpart.plot(
    mtcars_reg_tree,
    main = "Mtcars mpg Prediction"
)
dev.off()
cat("Saved as \"fig_02_regression_tree.png\"\n")