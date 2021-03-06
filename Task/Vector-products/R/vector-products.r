#===============================================================
# Vector products
# R implementation
#===============================================================

a <- c(3, 4, 5)
b <- c(4, 3, 5)
c <- c(-5, -12, -13)

#---------------------------------------------------------------
# Dot product
#---------------------------------------------------------------

dotp <- function(x, y) {
  if (length(x) == length(y)) {
    sum(x*y)
  }
}

#---------------------------------------------------------------
# Cross product
#---------------------------------------------------------------

crossp <- function(x, y) {
  if (length(x) == 3 && length(y) == 3) {
    c(x[2]*y[3] - x[3]*y[2], x[3]*y[1] - x[1]*y[3], x[1]*y[2] - x[2]*y[1])
  }
}

#---------------------------------------------------------------
# Scalar triple product
#---------------------------------------------------------------

scalartriplep <- function(x, y, z) {
  if (length(x) == 3 && length(y) == 3 && length(z) == 3) {
    dotp(x, crossp(y, z))
  }
}

#---------------------------------------------------------------
# Vector triple product
#---------------------------------------------------------------

vectortriplep <- function(x, y, z) {
  if (length(x) == 3 && length(y) == 3 && length(z) == 3) {
    crosssp(x, crossp(y, z))
  }
}

#---------------------------------------------------------------
# Compute and print
#---------------------------------------------------------------

cat("a . b =", dotp(a, b))
cat("a x b =", crossp(a, b))
cat("a . (b x c) =", scalartriplep(a, b, c))
cat("a x (b x c) =", vectortriplep(a, b, c))
