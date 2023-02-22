cat("\n")
# Question 1
cat("Question 1\n")
cat("(a) Distribution = Normal.\n       => mean = 100, std = ", sqrt(16)/sqrt(10), "\n")
cat("(b) Distribution = Unknown. n > 30 so assuming Normal Distribution.\n      => mean = 8, std = ", sqrt(9/34),"\n")
cat("(c) Distribution = Binomial.\n       => mean = 0.2, std = ", sqrt(0.2*(0.8)/24), "\n")
cat("(d) Distribution = Poisson.\n       => mean = 9, std = 9\n")
cat("\n")
cat("\n")

# Question 2
cat("Question 2\n")
sample_std = 500/sqrt(441)
cat("(a) Mean = 441, std = ", 500/sqrt(441), "\n")
cat("(b) P(x̄ > 449) = ", 1 - pnorm(449, 441, sample_std), "\n")
cat("(c) P(433 < x̄ < 449) = ", pnorm(449, 441, sample_std) - pnorm(443, 441, sample_std), "\n")
cat("(d) P(x̄ < 430) = ", pnorm(430, 441, sample_std), "\n")

# Question 3
cat("Question 3\n")
# sample_std = 500/sqrt(441)
# cat("(a) Mean = 441, std = ", 500/sqrt(441), "\n")
# cat("(b) P(x̄ > 449) = ", 1 - pnorm(449, 441, sample_std), "\n")
# cat("(c) P(433 < x̄ < 449) = ", pnorm(449, 441, sample_std) - pnorm(443, 441, sample_std), "\n")
# cat("(d) P(x̄ < 430) = ", pnorm(430, 441, sample_std), "\n")