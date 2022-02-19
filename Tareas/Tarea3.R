# KeyMtz
# 18/02/2022
# Tarea 3 Medidas de tendencia central 

#Problema 1

# Problema 1  -------------------------------------------------------------

Xi <- c(6, 4, 1, 3)
Yi <- c(1, 3, 4, 2)

sum(Xi)

sum(Yi)

prod(Xi)

prod(Yi)

sum(Xi, Yi)

prod(Xi^2, Yi^0.5)


# Problema 2 --------------------------------------------------------------
GrupoA <- c(80, 90, 90, 100)
GrupoB <- c(60, 65, 65, 70, 70, 70, 75, 75, 80, 80, 80, 80, 80, 85, 100)
# Sin realizar ningún calculo, cual grupo piensas que tiene una altura media mayor.
# a) Pienso que seria la del grupo A porque todos sus valores son mayores.
# b) 
mean(GrupoA)
mean(GrupoB)


# Problema 3  -------------------------------------------------------------

promedio80 <- c(87, 72, 85, 75)
mean(promedio80)
promedio80 <- c(87, 72, 85, 76)
mean(promedio80)
# Jose necesita obtener un 76 en su examen para promediar 80. 


# Problema 4 --------------------------------------------------------------

promedio2.2 <- 110/50
promedio2.2
# El enunciado correcto es el inciso b) hay un total de 110 niños en la ciudad.


# Problema 6  -------------------------------------------------------------
set <- c(2, 2, 3, 6, 10)

# a) Calcular moda, mediana y media. 
mean(set)
median(set)
mode <- function(set){return(as.numeric(names(which.max(table(set)))))}
mode(set)

# b) suma 5 a cada valor 
set <- c(2+5, 2+5, 3+5, 6+5, 10+5)
mean(set)
median(set)
mode(set)
set


# Problema 7 --------------------------------------------------------------

digitos(0, 1, 2, 3, 4, 5, 6, 7, 8, 9)
#Enumere cinco digitos que tengan una mediana de 7 y una media de 7. 
conjunto <- c(5, 7, 7, 7, 9)
median(conjunto)
mean(conjunto)
#Enumere cinco digitos que tengan una mediana de 7 y una media inferior de 7.
conjunto <-c(2, 5, 7, 8, 9)
median(conjunto)
mean(conjunto)
