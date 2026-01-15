# Write a R program to implement the data structures
# (i) Vectors
# (ii) Array
# (iii) Matrix
# (iv) Data Frame
# (v) Factor


cat("VECTOR:\n")
vec <- c(1, 2, 3, 4, 5, 6)
print(vec)

cat("\nARRAY:\n")
arr <- array(1:6, dim = c(2, 3))
print(arr)

cat("\nMATRIX:\n")
mat <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3)
print(mat)

cat("\nDATA FRAME:\n")
df <- data.frame(
    RollNo = c(1, 2, 3),
    Name = c("Amit", "Nishant", "Sam"),
    Marks = c(90, 85, 80)
)
print(df)

cat("\nFACTOR:\n")
size <- factor(
    c("Small", "Large", "Small", "Medium", "Small", "Large"),
    levels = c("Small", "Medium", "Large"),
    ordered = TRUE
)
print(size)


# ***OUTPUT***
# VECTOR:
# [1] 1 2 3 4 5 6

# ARRAY:
#      [,1] [,2] [,3]
# [1,]    1    3    5
# [2,]    2    4    6

# MATRIX:
#      [,1] [,2] [,3]
# [1,]    1    3    5
# [2,]    2    4    6

# DATA FRAME:
#   RollNo    Name Marks
# 1      1    Amit    90
# 2      2 Nishant    85
# 3      3     Sam    80

# FACTOR:
# [1] Small  Large  Small  Medium Small  Large
# Levels: Small < Medium < Large