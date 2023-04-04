# importing libraries
library(ggplot2)
library(qqplotr)

cat("\n")
# Question 1
cat("Question 1\n")
extensibility <- read.csv(file = "Extensibility.csv")
# plot_1 <- qqnorm(extensibility$Extensibility_H, main="Normal Probability Plot", , ylab = "Extensibility_H")
# plot_1 <- qqline(extensibility$Extensibility_H)
# plot_2 <- qqnorm(extensibility$Extensibility_P, main="Normal Probability Plot", , ylab = "Extensibility_P")
# plot_2 <- qqline(extensibility$Extensibility_P)
# cat("(a) Plots saved!\n")

# sample1 <- extensibility$Extensibility_H
# sample2 <- extensibility$Extensibility_P
# ggplot() + stat_qq(aes(sample = sample1), colour = "green") +    stat_qq(aes(sample = sample2), colour = "red")
# cat("(b) Plot saved!\n")
cat("(c) Calculating via p-Value\nParameter of interest is: 𝜇1 − 𝜇2\nHypotheses:\n") # nolint: line_length_linter.
cat("\t𝐻0: 𝜇1 − 𝜇𝜇2 = 0 ⇒ 𝐻0: 𝜇1 = 𝜇2\n")
cat("\t𝐻1: 𝜇1 − 𝜇𝜇2 ≠ 0 ⇒ 𝐻1: 𝜇1 ≠ 𝜇2\n")
alpha <- 0.05
cat("Level of Significance is 𝛼 = ", alpha, "\n")
cat("Variables:\n")
x_bar_1 <- mean(extensibility$Extensibility_H)
x_bar_2 <- mean(as.numeric(extensibility$Extensibility_P), na.rm = TRUE)
delta_o <- 0
cat("\tx̄1 = ", x_bar_1, "\n")
cat("\tx̄2 = ", x_bar_2, "\n")
cat("\tΔo = ", delta_o, "\n")
s_1 <- sd(extensibility$Extensibility_H)
s_2 <- sd(as.numeric(extensibility$Extensibility_P), na.rm = TRUE)
cat("\ts1 = ", s_1, "\n")
cat("\ts2 = ", s_2, "\n")
n_1 <- sum(!is.na(extensibility$Extensibility_H))
n_2 <- sum(!is.na(extensibility$Extensibility_P))
v <- n_1 + n_2 - 2
cat("\tn1 = ", n_1, "\n")
cat("\tn2 = ", n_2, "\n")
cat("\t=> Degrees of Freedom = ", v, "\n")
s_p2 <- (((n_1 - 1) * s_1 * s_1) + ((n_2 - 1) * s_2 * s_2)) / (n_1 + n_2 - 2)
s_p <- sqrt(s_p2)
cat("\t=> Sp = ", s_p, "\n")
t_o <- (x_bar_1 - x_bar_2 - delta_o) / (s_p * sqrt((1 / n_1) + (1 / n_2)))
cat("\t=> t_o = ", t_o, "\n")
p_value <- 2 * pt(-abs(t_o), df <- v)
cat("\t=> P-value = ", p_value, "\n")
if (p_value > alpha) {
    cat("FAILED TO REJECT null hypothesis since p-value > 𝛼\n")
} else {
    cat("null hypothesis REJECTED  since p-value < 𝛼\n")
}
cat("(d) Calculating via Critical Value\n")
t_o <- (x_bar_1 - x_bar_2 - delta_o) / (s_p * sqrt((1 / n_1) + (1 / n_2)))
critical_value <- abs(qt(p <- alpha / 2, df <- v))
cat("\t=> Critical Value = ±", abs(qt(p <- alpha / 2, df <- v)), "\n")
if ((t_o < -1 * critical_value) || (t_o > critical_value)) {
    cat("Null hypothesis REJECTED as test statistic is MORE extreme than the critical value\n") # nolint: line_length_linter.
} else {
    cat("FAILED TO REJECT null hypothesis since test statistic is LESS extreme than the critical value\n") # nolint: line_length_linter.
}
cat("(e) Yes, both parts returned the same answers\n")
cat("\n")
cat("\n")

# Question 2
cat("Question 2\n")
octane <- read.csv(file = "Octane.csv")
sample3 <- octane$Motor
sample4 <- octane$Research
samples_delta <- octane$Research - octane$Motor
cat("Parameter of interest is: Average Difference\nHypotheses:\n") # nolint: line_length_linter.
cat("\t𝐻0: 𝜇𝐷 = 0\n")
cat("\t𝐻1: 𝜇𝐷 > 0\n")
alpha <- 0.1
cat("Level of Significance is 𝛼 = ", alpha, "\n")
cat("Variables:\n")
d_1 <- mean(samples_delta)
s_1 <- sd(samples_delta)
n_1 <- sum(!is.na(samples_delta))
v <- n_1 - 1
delta_o <- 0
cat("\td1 = ", d_1, "\n")
cat("\tΔo = ", delta_o, "\n")
cat("\ts1 = ", s_1, "\n")
cat("\tn1 = ", n_1, "\n")
cat("\t=> Degrees of Freedom = ", v, "\n")
t_o <- (d_1 - delta_o) / (s_1 / sqrt(n_1))
cat("\t=> t_o = ", t_o, "\n")
critical_value <- abs(qt(p <- alpha / 2, df <- v))
cat("\t=> Critical Value = ±", abs(qt(p <- alpha / 2, df <- v)), "\n")
if ((t_o > critical_value)) {
    cat("Null hypothesis REJECTED as test statistic is MORE extreme than the critical value\n") # nolint: line_length_linter.
} else {
    cat("FAILED TO REJECT null hypothesis since test statistic is LESS extreme than the critical value\n") # nolint: line_length_linter.
}
cat("\n")
cat("\n")

# Question 3
cat("Question 3\n")
hardness <- read.csv(file = "Hardness.csv")
# boxplot(hardness)
cat("(a) Plots Generated!!\n")
cat("\t=> Variances are not similar. IQR for Hardness_2 is much greater and quantiles have greater spread too. Median for Hardness_1 is skewed towards Q3 while median for Hardness_2 seems pretty balanced. Therefore pooled variance CANNOT be used. \n") # nolint: line_length_linter.
cat("(b) Hypothesis:\n")
cat("\t𝐻0: 𝜇1 − 𝜇2 = 0 ⇒ 𝐻0: 𝜇1 = 𝜇2\n")
cat("\t𝐻1: 𝜇1 − 𝜇2 < 0 ⇒ 𝐻1: 𝜇1 < 𝜇2\n")
alpha <- 0.05
cat("Level of Significance is 𝛼 = ", alpha, "\n")
cat("Variables:\n")
sample5 <- hardness$Hardness_1
sample6 <- hardness$Hardness_2
x_bar_1 <- mean(sample5)
x_bar_2 <- mean(sample6)
delta_o <- 0
s_1 <- sd(sample5)
s_2 <- sd(sample6)
n_1 <- sum(!is.na(sample5))
n_2 <- sum(!is.na(sample6))
s_n_1 <- (s_1 * s_1) / n_1
s_n_2 <- (s_2 * s_2) / n_2
v <- ((s_n_1 + s_n_2) * (s_n_1 + s_n_2)) / ((s_n_1 * s_n_1) / (n_1 - 1) + (s_n_2 * s_n_2) / (n_2 - 1)) # nolint: line_length_linter.
v <- floor(v)
cat("\tx̄1 = ", x_bar_1, "\n")
cat("\tx̄2 = ", x_bar_2, "\n")
cat("\tΔo = ", delta_o, "\n")
cat("\ts1 = ", s_1, "\n")
cat("\ts2 = ", s_2, "\n")
cat("\tn1 = ", n_1, "\n")
cat("\tn2 = ", n_2, "\n")
cat("\t=> Degrees of Freedom = ", v, "\n")

t_o <- (x_bar_1 - x_bar_2 - delta_o) / sqrt(s_n_1 + s_n_2)
cat("\t=> t_o = ", t_o, "\n")
p_value <- pt(t_o, df <- v)
cat("\t=> P-value = ", p_value, "\n")

if (alpha < p_value) {
    cat("FAILED TO REJECT null hypothesis since p-value > 𝛼\n")
} else {
    cat("null hypothesis REJECTED since p-value < 𝛼\n")
}

cat("Question 4\n")
cat("\n")
cat("\n")

cat("Question 5\n")
