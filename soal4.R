# a.
x = rnorm(100, mean = 45, sd = 5)
pdf <- seq(length = 100)

# hitung x1 dan x2
mean = mean(x)
x1 <- floor(mean)
x2 <- ceiling(mean)

# hitung z score x1 dan x2
x1z <- (x1-45)/5
x2z <- (x2-45)/5

# hitung probabilitas
prob <- pnorm(x2z) - pnorm(x1z)
cat("Probabilitas dari", x1, "≤ x ≤", x2, "adalah", prob, "\n")
cat("Z-score untuk", x1, "adalah", x1z, "\n")
cat("Z-score untuk", x2, "adalah", x2z, "\n")

plot(x)

#b. histogram
hist(x, breaks = 50)

#c. varian
varian <- var(x)
cat("varian: ", varian, "\n")
