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
cat("n = 36 > 30 so Normal Distribution can be applied.\n")
sample_std = 500/sqrt(441)
cat("(a) Mean = 441, std = ", 500/sqrt(441), "\n")
cat("(b) P(x̄ > 449) = ", pnorm(449, 441, sample_std, lower.tail = FALSE), "\n")
cat("(c) P(433 < x̄ < 449) = ", pnorm(449, 441, sample_std) - pnorm(443, 441, sample_std), "\n")
cat("(d) P(x̄ < 430) = ", pnorm(430, 441, sample_std), "\n")
cat("\n")
cat("\n")

# Question 3
cat("Question 3\n")
cat("(a) nπ = 24 > 10 AND n(1-π) = 76 > 10 so Binomial Distribution can be applied.\n")
cat("(b) P(x̄ ≤ 20) = ", pbinom(20, 100, 0.24), "\n")
cat("(c) P(x̄ ≥ 24) = ", pbinom(24, 100, 0.24, lower.tail = FALSE), "\n")
cat("(d) E(x) = ", qbinom(0.9, 100, 0.24, lower.tail = FALSE), "\n")
cat("\n")
cat("\n")

# Question 4
cat("Question 4: \n")
cat("(a) Solved in Jupyter Notebook 'hw5_a.ipynb'.\n")
cat("(b) P(x̄ ≤ 7.5) = ", pnorm(7.5, 7.8), "\n")
cat("(c) P(x̄ ≤ 7.5) = 38% which is > 1 std so I would no, its not normal.")