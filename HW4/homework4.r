cat("\n")
# Question 1
cat("Question 1\n")
u = 11/32
std = 1/32
lower_prob = pnorm(10/32, u, std)
higher_prob = 1 - pnorm(13/32, u, std)
cat("(a) 10/32 < X or X > 13/32 = ", higher_prob + lower_prob, "\n")
cat("(b) Move mean to ", (10+13)/(32*2), "in\n")
cat("(c) % yield =  ", (pnorm(13/32, (10+13)/(32*2), std) - pnorm(10/32, (10+13)/(32*2), std))*100, "%\n")
cat("\n")
cat("\n")

# Question 2
cat("Question 2\n")
u = 40000
cat("(a) X ≥ 60,000 = ", 1 - pexp(60000, 1/u), "\n")
cat("(b) std = ", 1/u, "hrs\n")
cat("(c) X ≥ u + 3Z =  ", 1 - pexp(u + 3/u, 1/u), "\n")
cat("\n")
cat("\n")

# Question 3
cat("Question 3\n")
u = 1.25
std = sqrt(0.212)
cat("(a) X > 2.5 = ", 1 - pnorm(2.5, u, std), "\n")
cat("(b) X < 0.5 = ", pnorm(0.5, u, std), "\n")
cat("(c) T =  ", qnorm(0.95)*std + u, "sec\n")
cat("(d) u + 3Z =  ", 3*std + u, "sec\n")
cat("(e) % drivers =  ", (1 - pnorm(2.631304, u, std))*100, "%\n")
cat("\n")
cat("\n")


# Question 4
cat("Question 4\n")
cat("P(X ≥ 8) = ", 1 - punif(8, 0, 11),"\n")
cat("P(2 ≤ X ≤ 5) = ", punif(5, 0, 11)- punif(2, 0, 11),"\n")
mean = (0+11)/2
cat("E(X) = ", mean,"\n")
variance = ((0-11)^2)/12
cat("Var(X) = ", variance)
cat("\n")
cat("\n")

# Question 4
cat("Question 5\n")
cat("(a) P(X < 3000) = ", plnorm(3000,8, 0.2),"\n")
cat("(b) P(2000 < X ≤ 4000) = ", plnorm(4000,8, 0.2) - plnorm(2000,8, 0.2),"\n")
cat("(c) X = ", qlnorm(0.997,8, 0.2), "\n")
cat("(d) Real World Interpretation: If an optical fiber's lifetime has a log normal distrubution with mean = 8 and std = 0.2, the probability of it exceeding 5164 hrs is 99.7%.")