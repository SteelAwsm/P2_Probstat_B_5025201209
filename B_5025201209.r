library(BSDA)

##Hemakesha Ramadhani Heriqbaldi
##5025201209
##Probstat B

##No.1
#inisialisasi data atau variabel
selisihdata <- c(22, 20, 3, 13, 20, 18, 11, 16, 23)

#a
standar_deviasi <- sd(selisihdata)
cat("Standar deviasi: ")
standar_deviasi

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


##No.2
zsum.test(mean.x=23500, sigma.x = 3900, n.x = 100,  
          alternative = "greater", mu = 0,
          conf.level = 0.95)
#a
#tidak, karena hasil dari interval dengan 95% confidence adalah 22858.51, dan standar deviasi (z value) nya adalah 60.256, sangat jauh dengan yang dideskripsikan di soal
#b
# Output dari One-sample z-test
# z value menunjukkan standar deviasi, yaitu sebesar 60.256 di dalam z-test ini
# P-value adalah nilai probabilitas kesalahan yang didapat dari hasil uji statistik, yang memiliki besar 2.2e-16 di dalam z-test ini
# alternative hypothesis adalah hipotesis yang mengungkapkan hubungan antara dua variabel, yang lebih sering diambil disaat uji hipotesis, di dalam z-test ini, alternative hypotesisnya adalah "true mean is greater than 0" atau mean lebih besar dari 0
# confidance interval adalah mean dari estimasi plus minus variasi di dalam estimasi tersebut, yaitu sebesar 2285.51 di dalam z-test ini
# "sample estimates:" adalah estimasi sampel
# mean of x adalah rata rata dari x, yaitu 23500 di dalam z-test ini
#c
#kesimpulan dari p-value yang didapatkan adalah, dengan p-value sebesar 2.2e-16, peluang mendapatkan hasil yang telah diobservasi sangatlah kecil, karena p-value hanya bernilai 2.2e-16.


##no.3
#a
#H0 = Perusahaan dapat memilih saham dari bandung maupun bali, tidak akan ada perbedaan dalam hasilnya, atau dapat dikatakan, hasil yang didapatkan sama.
#H1 = Perusahaan harus memilih salah satu daerah, karena hasil akan berpengaruh dengan daerah yang dipilih, salah satu akan lebih besar daripada 0

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

#c
pooled_variance <- (((n_bandung-1)*(standar_deviasi_bandung^2)) + ((n_bali-1)*(standar_deviasi_bali^2))) / (n_bandung + n_bali - 2)
pooled_standard_deviation <- sqrt(pooled_variance)

pooled_t_statistic <- ((mean_bandung - mean_bali) - (0 - 0))/(pooled_standard_deviation*sqrt((1/n_bandung) + (1/n_bali)))
pooled_t_statistic

#d
t_critical <- qt(p=.05/2, df=2, lower.tail=FALSE)
t_critical

#e
#Perusahaan lebih baik memilih Bandung, karena memiliki mean lebih tinggi

#f
#dengan mean yang lebih tinggi, akan mendapatkan hasil saham yang lebih tinggi
