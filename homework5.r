cat("\n")
# Question 1
cat("Question 1\n")
# u = 11/32
# std = 1/32
# lower_prob = pnorm(10/32, u, std)
b_n = 34
b_pi = 8/b_n
c_pi = 0.2
c_n = 24

cat("(a) mean = 100, std = ", sqrt(16), "(Normal Distrbution)\n")
cat("(b) mean = 8 != std = 9 so not Poisson Distribution.\n")
cat("    mean = 8, Var = ", (b_n*b_pi)*(1-b_pi), " (for n = 34, u = 8) != 9 so not Binomial Distribution.\n")
cat("    mean = 8, != ", 1/b_n, " i.e (1/n) so not Geometric Distribution.\n")
cat("    π = 0.969 for u = 8, b = 34 plugged into Negative Binomial Distrbution equations:\n")
cat("    => mean = 8, std = 3 (Negative Binomial Distrbution).\n")
cat("(c) mean = ", c_n*c_pi, " std = ", sqrt((c_n*c_pi)*(1-c_pi)), "(Poisson Distribution).\n")
cat("(d) mean = 9, std = 9", "(Poisson Distribution).\n")
cat("\n")
cat("\n")
