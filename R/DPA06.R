# Write an R program to to obtain
# (i) sum of two matrices A and B.
# (ii) subtraction of two matrices A and B.
# (iii) Product of two matrices.


mat_a <- matrix(c(1, 2, 3, 4), nrow = 2, ncol = 2)
mat_b <- matrix(c(5, 6, 7, 8), nrow = 2, ncol = 2)
cat("Sum of A and B:\n")
print(mat_a + mat_b)
cat("\nDiff of A and B:\n")
print(mat_a - mat_b)
cat("\nProduct of A and B:\n")
print(mat_a %*% mat_b)