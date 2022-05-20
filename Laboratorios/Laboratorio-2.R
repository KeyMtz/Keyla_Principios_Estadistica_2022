# KeyMtz
# 11/02/2022
# Laboratorio 2



mamiferos <- read.csv("https://www.openintro.org/data/csv/mammals.csv")

hist(mamiferos$total_sleep)
hist(mamiferos$total_sleep, xlim = c(0,20), ylim = c(0,14), main = "Total de horas de sueño de las 39 especies", xlab = "Horas de sueño", ylab = "Frecuencia", las = 1, col = "purple")


data("chickwts")
head(chickwts[c(1:2, 42:43, 62:64), ])

feeds <- table(chickwts$feed)
feeds <- table(chickwts$weight)

barplot(feeds)
barplot(feeds[order(feeds, decreasing = TRUE)])

