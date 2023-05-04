Praktikum 1 Probabilitas dan Statitiska

Fathan Abi Karami / 5025211156
ProbStat C

1. Soal 1

Probabilitas seorang bayi yang baru lahir berjenis kelamin laki-laki adalah 0,488.
Jika kita asumsikan bahwa dalam satu hari di rumah sakit terdapat 10 kelahiran,
maka:]

1. a

Bagaimana pendistribusian banyak bayi laki-laki? Tentukan distribusi dengan
parameter yang sesuai

Jawaban: Menggunakan distribusi binomial B(x; n, p), dengan parameter banyaknya 
kelahiran n = 10, dan probabilitas bayi laki-laki p=0,488

1. b

Berapa probabilitas bahwa tepat tiga bayi di antaranya berjenis kelamin lakilaki?

```r
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
```

1. c

Berapa probabilitas bahwa kurang dari tiga bayi di antaranya berjenis kelamin
laki-laki?


```r
# c. P(X<3) B(0; 10, 0.488) + B(1; 10, 0.488) + B(2; 10, 0.488) menggunakan pbinom
x <- 3
n <- 10
p <- 0.488

prob <- pbinom(x-1, n, p)
cat("c. probabiitas jumlah bayi laki-laki kurang dari", x, "dalam", n, "kelahiran adalah", prob,"\n")

# probabiitas jumlah bayi laki-laki kurang dari 3 dalam 10 kelahiran adalah 0.0636442 
```

1. d

Berapa probabilitas bahwa tiga atau lebih bayi di antaranya berjenis kelamin
laki-laki?

```r
# d. P(x>=3) 
x <- 3
n <- 10
p <- 0.488

prob <- pbinom(x-1, n, p, lower.tail = FALSE)
cat("d. probabiitas jumlah bayi laki-laki lebih dari atau sama dengan", x, "dalam", n, "kelahiran adalah", prob, "\n")

# probabiitas jumlah bayi laki-laki lebih dari atau sama dengan 3 dalam 10 kelahiran adalah 0.9363558
```

1. e

Berapa nilai harapan dan simpangan baku banyak bayi laki-laki?

```r
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
```

1. f

Gambarkan histogram pendistribusian banyak bayi laki-laki

```r
# f. buat histogram
# Generate data
x <- 0:10
y <- dbinom(x, 10, 0.488)

cat(y)

# Create histogram
barplot(y, names.arg = x, main = "Histogram", xlab = "X", ylab = "f(x)")
```
Output:

![image](https://user-images.githubusercontent.com/90834092/236330511-e49de419-b9a5-4382-b847-e469b93ec334.png)

![image](https://user-images.githubusercontent.com/90834092/236330728-5aab703f-bdaa-4d1e-8101-2656dba333ec.png)

2. Soal 2

Misalkan banyak kematian karena kanker tulang untuk seluruh pekerja di pabrik
ban dalam 20 tahun ke depan adalah 1,8

2. a

Bagaimana pendistribusian banyak kematian karena kanker tulang? Tentukan
distribusi dengan parameter yang sesuai.

Jawaban: Menggunakan distribusi poisson, dengan parameter λ = 1.8

2. b

Ada 4 kematian akibat kanker tulang yang dilaporkan di kalangan pekerja
pabrik ban, apakah itu peristiwa yang tidak biasa? Hitung probabilitas
berdasarkan distribusi yang telah dipilih.

```r
# b. probabilitas kematian sebanyak 4
lambda <- 1.8
x <- 4
prob <- dpois(x, lambda)

cat("b. probabilitas kematian sebanyak", x, "adalah", prob, "\n")
# probabilitas kematian sebanyak 4 adalah 0.07230173 
```


2. c

Berapa peluang paling banyak 4 kematian akibat kanker tulang?

```r
# c. P(x<=4)
x <- 4 
lambda <- 1.8
prob <- ppois(x, lambda)

cat("c. probabilitas peluang kematian paling banyak 4 adalah", prob, "\n")
# probabilitas peluang kematian paling banyak 4 adalah 0.9635933
```

2. d

Berapa peluang lebih dari 4 kematian akibat kanker tulang?

```r
# d. P(X>4)
x <- 4 
lambda <- 1.8
prob <- ppois(x,lambda, lower.tail = FALSE)

cat("d. Probabilitas kematian lebih dari 4 adalah", prob, "\n")
# Probabilitas kematian lebih dari 4 adalah 0.03640666 
```

2. e

Berdasarkan distribusi yang telah dipilih, berapakah nilai harapan dan standar
deviasi banyak kematian akibat kanker tulang untuk pekerja pabrik ban?

```r
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
```

2. f

. Gambarkan histogram pendistribusian banyak banyak kematian akibat kanker
tulang untuk pekerja pabrik ban

```r
# f. buat histogram
# Generate data
x <- 0:10
y <- dpois(x, lambda = 1.8)


# Create histogram
barplot(y, names.arg = x, main = "Histogram", xlab = "X", ylab = "f(x)")
```

2. g

Gunakan simulasi untuk memeriksa hasil sebelumnya.

```r
# g. simulasi
lambda <- 1.8
n <- 10

simNum <- rpois(n, lambda)
cat("simulasi = ", simNum, "\n")
cat("rerata = ", sum(simNum) / n, "\n")
```

2. h

Jelaskan banyak kematian akibat kanker tulang berdasarkan simulasi Anda.
Bandingkan jawaban pada pertanyaan 2d dengan hasil simulasi Anda.

Jawaban: Hasil simulasi mendekati nilai lambda

Output:

![image](https://user-images.githubusercontent.com/90834092/236330786-a24cf223-cd88-4071-bd12-031eedcd5bed.png)

![image](https://user-images.githubusercontent.com/90834092/236330825-52661b98-9505-4549-aea7-e3b57d5c6cce.png)

3. soal 3

Diketahui nilai x = 3 dan v = 10. Tentukan:

3. a

Fungsi probabilitas dari distribusi Chi-Square.

```r
# a. fungsi probabilitas x=3, v=10
x<-3
df<-10
prob <- dchisq(x,df, ncp=0, log=FALSE)

cat("a. Fungsi probabilitas chi square =", prob, "\n")
# Fungsi probabilitas chi square = 0.02353326 
```

3. b

Histogram dari distribusi Chi-Square dengan 500 data acak.

```r
# b. histogram
y <- rchisq(500, 10, ncp=0)


hist(y)
```

3. c

Nilai rataan (μ) dan varian (σ²) dari distribusi Chi-Square.

```r
# c. nilai rataan dan varian
# The mean and variance of the chi-squared distribution are
# μ = v and σ2 = 2v
rataan = mean(y)
varian = var(y)
cat("c. nilai rataan =", rataan, "\n")
cat("   nilai varians =", varian)
```
Output:

![image](https://user-images.githubusercontent.com/90834092/236330883-6ddce326-450c-46c3-86fe-7e14d0836970.png)

![image](https://user-images.githubusercontent.com/90834092/236330914-85826dde-49de-4bfa-8b4e-e32739935efc.png)

4. Soal 4

Diketahui data bangkitan acak sebanyak 100 dengan mean = 45 dan sd = 5.
Tentukan:

4. a

Fungsi probabilitas dari distribusi Normal P(X1 ≤ x ≤ X2), hitung z-scorenya
dan plot data bangkitan acaknya dalam bentuk grafik. Petunjuk (gunakan
fungsi plot()).

```r
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
```

4. b

Gambarkan histogram dari distribusi Normal dengan breaks 50

```r
#b. histogram
hist(x, breaks = 50)
```

4. c

Nilai varian (σ²) dari hasil data bangkitan acak distribusi Normal

```r
#c. varian
varian <- var(x)
cat("varian: ", varian, "\n")
```
Output:

![image](https://user-images.githubusercontent.com/90834092/236336004-cfe7cf3f-08e5-49c8-8aee-0fc9c4624153.png)

![image](https://user-images.githubusercontent.com/90834092/236331123-21fc59ed-ab43-4096-ae96-400e3b4c9a3e.png)

![image](https://user-images.githubusercontent.com/90834092/236331065-603190c1-78a5-4fdc-8e4a-0f7e02746635.png)

5. Soal 5

Kerjakanlah menggunakan distribusi T-Student

5. a

Berapa probabilitas terjadinya suatu peristiwa acak X kurang dari -2,34 dengan
6 derajat kebebasan?

```r
# a. 
cat("a. probabilitas =", pt(-2.34, df = 6, lower.tail = TRUE), "\n")
```

5. b

Berapa probabilitas terjadinya suatu peristiwa acak X lebih dari 1,34 dengan 6
derajat kebebasan?

```r
# b. 
cat("b. probabilitas =", pt(1.34, df = 6, lower.tail = FALSE), "\n")
```

5. c

Berapa probabilitas terjadinya suatu peristiwa acak X kurang dari -1,23 atau
lebih besar dari 1,23 dengan 3 derajat kebebasan?

```r
# c. 
# menghitung probabilitas distribusi T kurang dari -1.23 dengan 3 derajat kebebasan
p <- pt(-1.23, df = 3, lower.tail = TRUE)

# menggunakan sifat distribusi t yang simetris
cat("c. Probabilitas =", 2*p, "\n")
```

5. d

```r
# d. 
p1 <- pt(0.94, df = 14,lower.tail = TRUE)
p2 <- pt(-0.94, df = 14, lower.tail = TRUE)
cat("d. Probabilitas =", p1-p2, "\n")
```

Berapa probabilitas terjadinya suatu peristiwa acak X berada di antara -0,94
dan 0,94 dengan 14 derajat kebebasan?

5. e

```r
# e. 
cat("e. t-score =", qt(0.0333, df = 5, lower.tail = TRUE), "\n")
```

Berapa nilai t-score dengan 5 derajat kebebasan yang memiliki luasan 0,0333
satuan persegi di bawah kurva dan di sebelah kiri t-score tersebut?

5. f

Berapa nilai t-score dengan 25 derajat kebebasan yang memiliki luasan 0,125
satuan persegi di bawah kurva dan di sebelah kanan t-score tersebut?

```r
#f. 
cat("f. t-score =", qt(0.125, df = 25, lower.tail = FALSE), "\n")
```

5. g

Berapa nilai t-score dengan 11 derajat kebebasan yang memiliki luasan 0,75
satuan persegi di bawah kurva dan di antara t-score tersebut dan negatif dari
nilai t-score tersebut?

```r
#g. 
p <- qt((1-0.75)/2, 11, lower.tail = TRUE)
cat("g. t-score =", p, "dan", -p, "\n")
```

5. h

Berapa nilai t-score dengan 23 derajat kebebasan yang memiliki luasan 0,0333
satuan persegi di bawah kurva dan di luar interval antara t-score tersebut dan
negatif dari nilai t-score tersebut?

```r
#h. 
p <- qt(0.0333/2, 23, lower.tail = TRUE)
cat("h. t-score =", p, "dan", -p, "\n")
```

Output:

![image](https://user-images.githubusercontent.com/90834092/236331196-ac8467fb-4d93-4b98-a3b8-1063e3028cbd.png)




