# Soal 2

# a. 
cat("a. Menggunakan distribusi poisson, dengan parameter λ = 1.8\n")
# menggunakan distribusi poisson

# b. probabilitas kematian sebanyak 4
lambda <- 1.8
x <- 4
prob <- dpois(x, lambda)

cat("b. probabilitas kematian sebanyak", x, "adalah", prob, "\n")
# probabilitas kematian sebanyak 4 adalah 0.07230173 

# c. P(x<=4)
x <- 4 
lambda <- 1.8
prob <- ppois(x, lambda)

cat("c. probabilitas peluang kematian paling banyak 4 adalah", prob, "\n")
# probabilitas peluang kematian paling banyak 4 adalah 0.9635933

# d. P(X>4)
x <- 4 
lambda <- 1.8
prob <- ppois(x,lambda, lower.tail = FALSE)

cat("d. Probabilitas kematian lebih dari 4 adalah", prob, "\n")
# Probabilitas kematian lebih dari 4 adalah 0.03640666 

# e. nilai harapan dan simpangan baku
# Both the mean and the variance of the Poisson distribution p(x; λt) are λt
t <- 20
lamda <- 1.8

ans <- lambda * t
standardDeviasi <- sqrt(ans)
cat("e. nilai harapan =", ans, "\n")
cat("   standard deviasi = ", standardDeviasi, "\n")
# nilai harapan = 36 
# standard deviasi =  6 

# f. buat histogram
# Generate data
x <- 0:10
y <- dpois(x, lambda = 1.8)


# Create histogram
barplot(y, names.arg = x, main = "Histogram", xlab = "X", ylab = "f(x)")


# g. simulasi
lambda <- 1.8
n <- 10

simNum <- rpois(n, lambda)
cat("simulasi = ", simNum, "\n")
cat("rerata = ", sum(simNum) / n, "\n")

# h. 
cat("g. Hasil simulasi mendekati nilai lambda\n")


