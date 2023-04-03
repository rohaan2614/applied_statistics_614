# importing libraries
library(ggplot2)
library(qqplotr)
 
# creating random data
random_values = rnorm(500, mean = 90, sd = 50)

# plotting data without line and labels
ggplot(mapping = aes(sample = random_values)) + stat_qq_point(size = 2)


# cat("\n")
# # Question 1
# cat("Question 1\n")
# u = 11/32
# std = 1/32
# lower_prob = pnorm(10/32, u, std)
# higher_prob = 1 - pnorm(13/32, u, std)
# cat("(a) 10/32 < X or X > 13/32 = ", higher_prob + lower_prob, "\n")
# cat("(b) Move mean to ", (10+13)/(32*2), "in\n")
# cat("(c) % yield =  ", (pnorm(13/32, (10+13)/(32*2), std) - pnorm(10/32, (10+13)/(32*2), std))*100, "%\n")
# cat("\n")
# cat("\n")

# # Question 2
# cat("Question 2\n")
# u = 40000
# cat("(a) X ≥ 60,000 = ", 1 - pexp(60000, 1/u), "\n")
# cat("(b) std = ", 1/u, "hrs\n")
# cat("(c) X ≥ u + 3Z =  ", 1 - pexp(u + 3/u, 1/u), "\n")
# cat("\n")
# cat("\n")