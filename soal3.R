#Soal 3
# a. fungsi probabilitas x=3, v=10
x<-3
df<-10
prob <- dchisq(x,df, ncp=0, log=FALSE)

cat("a. Fungsi probabilitas chi square =", prob, "\n")
# Fungsi probabilitas chi square = 0.02353326 


# b. histogram
y <- rchisq(500, 10, ncp=0)


hist(y)

# c. nilai rataan dan varian
# The mean and variance of the chi-squared distribution are
# μ = v and σ2 = 2v
rataan = mean(y)
varian = var(y)
cat("c. nilai rataan =", rataan, "\n")
cat("   nilai varians =", varian)