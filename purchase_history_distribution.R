# setwd("/path/marketing_data_exploration_r/")

# Importando base de datos en formato .CSV
marketingData <- read.csv("datasets/MarketingDirecto.csv")

# Mostramos estructura de la base de datos.
str(marketingData)

# Analizando la variable "Historial"

# Variable "Historial" => Variable Cualitativa Ordinal

# Convertiendo variable "Historial" a factor ordinal
marketingData$Historial = factor(marketingData$Historial, levels = c("Bajo", "Medio", "Alto"), ordered = TRUE)

# Obteniendo la frecuencia absoluta de la variable
ni<-table(marketingData$Historial)

# Mostrando la frecuencia absoluta de la variable
# Bajo Medio  Alto 
# 230   212   255 
ni

# Obteniendo la frecuencia relativa de la variable
fi<-prop.table(table(marketingData$Historial))

# Mostrando la frecuencia relativa de la variable
# Bajo     Medio      Alto 
# 0.3299857 0.3041607 0.3658537
fi

# Obteniendo la frecuencia porcentual de la variable
pi<-prop.table(table(marketingData$Historial))*100

# Mostrando la frecuencia porcentual de la variable
# Bajo    Medio     Alto 
# 32.99857 30.41607 36.58537
pi

# Visualización de la distribución de la variable "Historial"

# Mostrando gráfico de barras
barplot(
  pi,
  col=c("#009E73","#E69F00","#56B4E9"),
  main="Distribución de la variable: Historial de Compra", 
  xlab="Historial de compra", 
  ylab="Porcentaje de distribución")

# Mostrando gráfico de sectores circulares.

# Asignando labels al gráfico
labels<-paste(
  names(table(marketingData$Historial)),
  "\n",
  pi,
  "%",sep="")

pie(
  pi, 
  labels = labels, 
  main="Distribución de la variable: Historial de Compra")
