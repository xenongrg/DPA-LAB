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
gender <- factor(c("Male", "Female", "Male", "Female"))
print(gender)