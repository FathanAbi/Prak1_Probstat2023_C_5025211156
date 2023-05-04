# Soal 1
cat("a. Menggunakan distribusi binomial B(x; n, p), dengan parameter banyaknya 
kelahiran n = 10, dan probabilitas bayi laki-laki p=0,488\n")

# Menggunakan distribusi binomial B(x; n, p), dengan parameter banyaknya 
# kelahiran n = 10, dan probabilitas bayi laki-laki p=0,488


# b.  P(X=3) B(3; 10, 0.488)
#     banyaknya sukses (laki-laki) x, banyaknya kelahiran n, probabilitas sukses 
#     (laki-laki) p
x <- 3
n <- 10
p <- 0.488

# hitung probabilitas
prob <- dbinom(x, n, p)

# print hasil
cat("b. probabiitas bayi laki-laki sebanyak", x, "dalam", n, "kelahiran adalah", prob, "\n")
# probabiitas bayi laki-laki sebanyak 3 dalam 10 kelahiran adalah 0.1286265 


# c. P(X<3) B(0; 10, 0.488) + B(1; 10, 0.488) + B(2; 10, 0.488) menggunakan pbinom
x <- 3
n <- 10
p <- 0.488

prob <- pbinom(x-1, n, p)
cat("c. probabiitas jumlah bayi laki-laki kurang dari", x, "dalam", n, "kelahiran adalah", prob,"\n")

# probabiitas jumlah bayi laki-laki kurang dari 3 dalam 10 kelahiran adalah 0.0636442 

# d. P(x>=3) 
x <- 3
n <- 10
p <- 0.488

prob <- pbinom(x-1, n, p, lower.tail = FALSE)
cat("d. probabiitas jumlah bayi laki-laki lebih dari atau sama dengan", x, "dalam", n, "kelahiran adalah", prob, "\n")

# probabiitas jumlah bayi laki-laki lebih dari atau sama dengan 3 dalam 10 kelahiran adalah 0.9363558

# e. nilai harapan dan simpangan baku
# hitung E(x) menggunakan E(X) = SUM(x.p(x)) x=0,1,2,3,4,5,6,7,8,9,10
i<-0
ans <- 0
while(i<=10){
  ans <- ans + (i*dbinom(i, 10, 0.488))
  
  i<-i+1
}

cat("e. E(x) = ", ans, "\n")

# hitung simpangan baku = E(x^2) - E(X)^2
# hitung E(x^2)
i<-0
ans1 <- 0
while(i<=10){
  ans1 <- ans1 + (i*i*dbinom(i, 10, 0.488))
  
  i<-i+1
}

#hitung E(x)^2
i<-0
ans2 <- 0
while(i<=10){
  ans2 <- ans2 + (i*dbinom(i, 10, 0.488))
  
  i<-i+1
}

simpanganBaku <- ans1 + ans2
simpanganBaku <- sqrt(simpanganBaku)

cat("   Simpangan baku = ", simpanganBaku, "\n")

# E(x) =  4.88 
# Simpangan baku =  31.19296 

# f. buat histogram
# Generate data
x <- 0:10
y <- dbinom(x, 10, 0.488)

cat(y)

# Create histogram
barplot(y, names.arg = x, main = "Histogram", xlab = "X", ylab = "f(x)")
