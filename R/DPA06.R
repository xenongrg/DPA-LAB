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


# ***OUTPUT***
# Sum of A and B:
#      [,1] [,2]
# [1,]    6   10
# [2,]    8   12

# Diff of A and B:
#      [,1] [,2]
# [1,]   -4   -4
# [2,]   -4   -4

# Product of A and B:
#      [,1] [,2]
# [1,]   23   31
# [2,]   34   46