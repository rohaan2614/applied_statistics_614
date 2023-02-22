# Example 1
# distribution function
upperProb = punif(5.05, 4.9, 5.1, TRUE)
lowerProb = punif(q=4.95, min=4.9, max=5.1)
cat(upperProb, " - ", lowerProb, " = ", upperProb - lowerProb, "\n")

# Mean
## integrated function
integrand <- function(x) {5*x}
         
## integrate the function from 4.9 to 5.1
cat("Mean : ")
print(integrate(integrand, lower = 4.9, upper = 5.1))

# Variance
integrand <- function(x) {5*(x-5)^2}
cat("Var  : ")
print(integrate(integrand, 4.9, 5.1))