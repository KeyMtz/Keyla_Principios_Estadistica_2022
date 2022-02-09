# KeyMtz
# 09/02/2022
# Sesion semana 4 Sala de computo 

# Importar datos

# Importar datos ----------------------------------------------------------

vivero <- read.csv("Clases/BD_vivero.csv" , header = TRUE)

#Estadistica descriptiva

# Estadistica descriptiva -------------------------------------------------

#Medidas de tendencia central

mean(vivero$IE)
median(vivero$IE)
range(vivero$IE)
fivenum(vivero$IE)

boxplot(vivero$IE, horizontal = T, col="red")
hist(vivero$IE, ylim = c(0,12))


frec <- table(vivero$IE)
