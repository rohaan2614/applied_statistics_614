cat("\n")
# Question 1
cat("Question 1\n")
cat("(a) P (X>= 7) = ", 4/11, "\n")
cat("(b) P(1 ≤ X ≤ 3) = ", 3/11,"\n")
cat("(c) P(X ≤ -1) = ", 0/11, "\n")
cat("(d)  E(X) = ", (0 + 10)/2, "\n")
cat("(e)  Var(X) = ", (-10)*(-10)/12, "\n")
cat("\n")
cat("\n")

# Question 2
cat("Question 2\n")
cat("(a) 10C2 = ", 45, "\n")
cat("(b) 2C1 * 8C1 = ", 2 * 8,"\n")
cat("(c) P(X=F,NF) = ", 16/45, "\n")
cat("\n")
cat("\n")

# Question 3
cat("Question 3\n")
cat("(a) E(X) = ", 1*0.3 + 3*0.7, "\n")
cat("(b) STD = ", sqrt(1*(0.3*0.7) + (3*(0.7*0.3))),"\n")
cat("(c) 1500 * E(X) = ", 1500*(1*0.3 + 3*0.7), "\n")
cat("\n")
cat("\n")


# Question 4
cat("Question 4\n")
cat("(a) (PX>=3) = ", pexp(3, rate = 1/2, lower.tail = FALSE), "\n")
cat("(b) P(X<=1) + P(X>=4) = ", pexp(1, rate = 1/2, lower.tail = TRUE, log.p = FALSE) + pexp(4, rate = 1/2, lower.tail = FALSE, log.p = FALSE),"\n")
cat("(c) P(2<=X<=4) = ",  pexp(4, rate = 1/2, lower.tail = TRUE) - pexp(2, rate = 1/2, lower.tail = TRUE), "\n")
cat("\n")
cat("\n")

# Question 5
cat("Question 5\n")
cat("(a) (PX>500) = ", pnorm(500, 501, 2, FALSE), "\n")
cat("(b) P(X>=8) = ",  pbinom(8, size=10, FALSE, prob=pnorm(500, 501, 2, FALSE)) ,"\n")
cat("\n")
cat("\n")

# Question 11
cat("Question 11\n")
cat("(a) P(NL | B)  = ", (6/200)/(90/200), "\n")
cat("(b) P(NL) * P(B) = ",  (60/200) * (90/200),"\n")
cat("\n")
cat("\n")