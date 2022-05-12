# Key_Mtz
# Clase semana 7 dia 1 
# Imporatr datos de semillas 
# 02/03/2022


semillas <-read.csv("Clases/Semillas.csv")

graf.sem <- boxplot(semillas$Peso_gr)

#Identificar valor extremo mayor a 40 
which(semillas$Peso_gr >40)
# revisar toda la fila 524
semillas [524, ]

#Identificar semillas con valores menores al rango
graf.sem$out

which(semillas$Peso_gr <=2.671)

#Identificar los cuartiles 
quantile(semillas$Peso_gr, 0.25)
quantile(semillas$Peso_gr, 0.5)
quantile(semillas$Peso_gr, 0.75)
quantile(semillas$Peso_gr, 1)

#Tablas de frecuencia para semillas 

numero <- table(semillas$Cond)
numero/6
