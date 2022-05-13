#Key_Mtz
#Clase semana 9 dia 1
#16/03/2022
#Revisar datos de madera

madera <- read.csv("Clases/Madera.csv", header = T)
madera$Sp <- as.factor(madera$Sp)


library(dplyr)
shapiro.test(bar$Peso_gr)

bar <- madera %>% 
  filter(Sp=="Bar")
hist(bar$Peso_gr,col = "light blue")

Chp <- madera %>%
  filter(Sp=="Chp")
hist(Chp$Peso_gr, col = "orange")

D.Eb <- madera %>%
  filter(Sp=="D. Ebano")

hist(D.Eb$Peso_gr, col = "purple")

Ebano <- madera %>%
  filter(Sp=="Ebano")
hist(Ebano$Peso_gr, col = "pink")

url <- "https://raw.githubusercontent.com/mgtagle/Marco_Principios_Estadistica_2022/main/Clases/Semillas.csv"
Semillas <- read.csv(url)

hist(Semillas$Peso_gr)
shapiro.test(Semillas$Peso_gr)

Semillas$Cond <- as.factor(Semillas$Cond)

pobre <- Semillas %>%
  filter(Cond=="Pobre")
hist(pobre$Peso_gr, col = "Purple")
shapiro.test(pobre$Peso_gr)

Q1 <- Semillas %>%
  filter(Cond=="Q1")
hist(Q1$Peso_gr, col = "light blue")
shapiro.test(Q1$Peso_gr)

Q2 <- Semillas %>%
  filter(Cond=="Q2")
hist(Q2$Peso_gr, col = "Green")
shapiro.test(Q2$Peso_gr)

Q3 <- Semillas %>%
  filter(Cond=="Q3")
hist(Q3$Peso_gr, col = "yellow")
shapiro.test(Q3$Peso_gr)

Q4 <- Semillas %>%
  filter(Cond=="Q4")
hist(Q4$Peso_gr, col = "pink")
shapiro.test(Q4$Peso_gr)

