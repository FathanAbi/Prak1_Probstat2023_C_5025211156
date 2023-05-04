#Soal 5
# a. 
cat("a. probabilitas =", pt(-2.34, df = 6, lower.tail = TRUE), "\n")

# b. 
cat("b. probabilitas =", pt(1.34, df = 6, lower.tail = FALSE), "\n")

# c. 
# menghitung probabilitas distribusi T kurang dari -1.23 dengan 3 derajat kebebasan
p <- pt(-1.23, df = 3, lower.tail = TRUE)

# menggunakan sifat distribusi t yang simetris
cat("c. Probabilitas =", 2*p, "\n")

# d. 
p1 <- pt(0.94, df = 14,lower.tail = TRUE)
p2 <- pt(-0.94, df = 14, lower.tail = TRUE)
cat("d. Probabilitas =", p1-p2, "\n")

# e. 
cat("e. t-score =", qt(0.0333, df = 5, lower.tail = TRUE), "\n")

#f. 
cat("f. t-score =", qt(0.125, df = 25, lower.tail = FALSE), "\n")

#g. 
p <- qt((1-0.75)/2, 11, lower.tail = TRUE)
cat("g. t-score =", p, "dan", -p, "\n")

#h. 
p <- qt(0.0333/2, 23, lower.tail = TRUE)
cat("h. t-score =", p, "dan", -p, "\n")