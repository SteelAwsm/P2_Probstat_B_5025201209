# P1_Probstat_B_5025201209<br/>

Hemakesha Ramadhani Heriqbaldi <br/>
5025201209 <br/>
Probabilitas dan Statistik B <br/>

## Soal 1<br/>
### inisialisasi data atau variabel untuk digunakan di soal no 1
```r
#inisialisasi data atau variabel
selisihdata <- c(22, 20, 3, 13, 20, 18, 11, 16, 23)
```
Hasil dari inisialisasi variabel: <br/>
![inisialisasi_variabel](https://user-images.githubusercontent.com/78362238/170873187-d6e31a36-6444-4314-b658-5b2fa5b716f4.png)
<br/>

### Soal 1a
mencari standar deviasi menggunakan fungsi `sd` dan variabel `selisihdata` yang berisi selisih dari data
```r
#a
standar_deviasi <- sd(selisihdata)
cat("Standar deviasi: ")
standar_deviasi
```
- hasil = [1] 6.359595
<br/>

### Soal 1b
sebelum menemukan nilai t(p value), harus ditemukan hasil dari t test terlebih dahulu, dengan rumus `rata_rata` dikurangi `miu0` dibagi dengan `standar_deviasi` yang dikurangi dengan `sqrt(n)` terlebih dahulu, lalu menggunakan rumus pt dikali 2 dengan variabel
- `student_t_test*1` sebagai hasil t test
- `df=n-1` sebagai degree of freedom
- ` lower.tail=FALSE` menandakan bahwa nilai t ini untuk two tail
```r
#b
#variabel yang dibutuhkan
rata_rata <- mean(selisihdata)
miu0 <- 0 #tidak ada rata rata  yang jadi perbandingan
n <- 9 
student_t_test <- ((rata_rata - miu0) / (standar_deviasi / sqrt(n)))
df <- n-1 #degree of freedom

pvalue <- 2*pt(student_t_test*1, df=n-1, lower.tail=FALSE)
cat ("nilai t(p value): ")
pvalue
```
- hasil = [1] 6.003179e-05
<br/>

### Soal 1c
no 1c menggunakan t test 2 populasi karena ada kadar saturasi oksigen sebelum dan sesudah
```r
#c
#menggunakan uji 2 populasi karena ada kadar saturasi oksigen sebelum dan sesudah 
oksigen_sebelum <- c(78, 75, 67, 77, 70, 72, 78, 74, 77)
oksigen_sesudah <- c(100, 95, 70, 90, 90, 90, 89, 90, 100)

t.test(x=oksigen_sebelum, y=oksigen_sesudah,
       alternative = "two.sided",
       paired = FALSE, var.equal = TRUE,
       conf.level = 0.95)

#Dari hasil yang didapatkan, dapat dilihat bahwa tidak pengaruh, karena 95 percent confidence interval nya hasilnya minus, sama dengan hipotesis alternatif
#-23.035747
#-9.408698
```
<br/>
Hasil: <br/>

![hasil_1c](https://user-images.githubusercontent.com/78362238/170881200-b296b7b0-1e97-4208-813b-cda23d15bd4e.png)

<br/>

Dari hasil yang didapatkan, dapat dilihat bahwa tidak pengaruh, karena 95 percent confidence interval nya hasilnya minus, sama dengan hipotesis alternatif
- -23.035747 
- -9.408698

<br/>

## Soal 2<br/>
Rumus yang digunakan untuk mengerjakan soal 2:
```r
zsum.test(mean.x=23500, sigma.x = 3900, n.x = 100,  
          alternative = "greater", mu = 0,
          conf.level = 0.95)
```
<br/>
Hasil: <br/>

![hasil_ztest](https://user-images.githubusercontent.com/78362238/170878078-c330611a-c78b-4f43-a82e-a48725269de7.png)
<br/>

### soal 2a
```r
#a
#tidak, karena hasil dari interval dengan 95% confidence adalah 22858.51, dan standar deviasi (z value) nya adalah 60.256, sangat jauh dengan yang dideskripsikan di soal

```
Tidak, karena hasil dari interval dengan 95% confidence adalah 22858.51, dan standar deviasi (z value) nya adalah 60.256, sangat jauh dengan yang dideskripsikan di soal.
<br/>

### soal 2b
```r
#b
# Output dari One-sample z-test
# z value menunjukkan standar deviasi, yaitu sebesar 60.256 di dalam z-test ini
# P-value adalah nilai probabilitas kesalahan yang didapat dari hasil uji statistik, yang memiliki besar 2.2e-16 di dalam z-test ini
# alternative hypothesis adalah hipotesis yang mengungkapkan hubungan antara dua variabel, yang lebih sering diambil disaat uji hipotesis, di dalam z-test ini, alternative hypotesisnya adalah "true mean is greater than 0" atau mean lebih besar dari 0
# confidance interval adalah mean dari estimasi plus minus variasi di dalam estimasi tersebut, yaitu sebesar 2285.51 di dalam z-test ini
# "sample estimates:" adalah estimasi sampel
# mean of x adalah rata rata dari x, yaitu 23500 di dalam z-test ini
```
Output dari one-sample z-test
- z value menunjukkan standar deviasi, yaitu sebesar 60.256 di dalam z-test ini
- P-value adalah nilai probabilitas kesalahan yang didapat dari hasil uji statistik, yang memiliki besar 2.2e-16 di dalam z-test ini
- alternative hypothesis adalah hipotesis yang mengungkapkan hubungan antara dua variabel, yang lebih sering diambil disaat uji hipotesis, di dalam z-test ini, alternative hypotesisnya adalah "true mean is greater than 0" atau mean lebih besar dari 0
- confidance interval adalah mean dari estimasi plus minus variasi di dalam estimasi tersebut, yaitu sebesar 2285.51 di dalam z-test ini
- "sample estimates:" adalah estimasi sampel
- mean of x adalah rata rata dari x, yaitu 23500 di dalam z-test ini
<br/>

### soal 2c
```r
#c
#kesimpulan dari p-value yang didapatkan adalah, dengan p-value sebesar 2.2e-16, peluang mendapatkan hasil yang telah diobservasi sangatlah kecil, karena p-value hanya bernilai 2.2e-16.
```
kesimpulan dari p-value yang didapatkan adalah, dengan p-value sebesar 2.2e-16, peluang mendapatkan hasil yang telah diobservasi sangatlah kecil, karena p-value hanya bernilai 2.2e-16.
<br/>


## Soal 3<br/>
### soal 3a
```r
#a
#H0 = Perusahaan dapat memilih saham dari bandung maupun bali, tidak akan ada perbedaan dalam hasilnya, atau dapat dikatakan, hasil yang didapatkan sama.
#H1 = Perusahaan harus memilih salah satu daerah, karena hasil akan berpengaruh dengan daerah yang dipilih, salah satu akan lebih besar daripada 0
```
Hipotesis null dan hipotesis alternatif (h0 & h1):
- H0 = Perusahaan dapat memilih saham dari bandung maupun bali, tidak akan ada perbedaan dalam hasilnya, atau dapat dikatakan, hasil yang didapatkan sama.
- H1 = Perusahaan harus memilih salah satu daerah, karena hasil akan berpengaruh dengan daerah yang dipilih, salah satu akan lebih besar daripada 0
<br/>

### soal 3b
```r
#b
#sampel Statistik
#Bandung
n_bandung <- 19
mean_bandung <- 3.64
standar_deviasi_bandung <- 1.67
#Bali
n_bali <- 27
mean_bali <- 2.79
standar_deviasi_bali <- 1.32
#confidence level
alpha <- 0.05
```
Sampel statistik: <br/>
- n bandung (jumlah saham) = 19
- mean bandung = 3.64
- standar deviasi bandung = 1.67
- n bali (jumlah saham) = 27
- mean bali = 2.79
- standar deviasi bali = 1.32
- confidence level (alpha) = 0.05
<br/>

### soal 3c
menggunakan rumus `pooled t statistic`, sebelumnya harus mencari `pooled standard deviation`, yang merupakan akar dari `pooled variance`
```r
#c
pooled_variance <- (((n_bandung-1)*(standar_deviasi_bandung^2)) + ((n_bali-1)*(standar_deviasi_bali^2))) / (n_bandung + n_bali - 2)
pooled_standard_deviation <- sqrt(pooled_variance)

pooled_t_statistic <- ((mean_bandung - mean_bali) - (0 - 0))/(pooled_standard_deviation*sqrt((1/n_bandung) + (1/n_bali)))
pooled_t_statistic

```
- hasil pooled_t_statistic = [1] 1.926715
<br/>

### soal 3d
menggunakan rumus qt dengan parameter `p` sebagai confidence level, `df` sebagai degree of freedom, `lower.tail = FALSE` karena merupakan tes two-tail
```r
#d
t_critical <- qt(p=.05/2, df=2, lower.tail=FALSE)
t_critical
```
- Hasil yang didapatkan: [1] 4.302653
<br/>

### soal 3e<br/>
```r
#e
#Perusahaan lebih baik memilih Bandung, karena memiliki mean lebih tinggi
```
Perusahaan lebih baik memilih Bandung, karena memiliki mean lebih tinggi
<br/>
### soal 3f<br/>
```r
#f
#dengan mean yang lebih tinggi, akan mendapatkan hasil saham yang lebih tinggi
```
dengan mean yang lebih tinggi, akan mendapatkan hasil saham yang lebih tinggi
<br/>

## Soal 4<br/>
## Soal 5<br/>
