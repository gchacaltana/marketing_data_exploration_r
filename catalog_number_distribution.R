# Importando base de datos en formato .CSV
marketingData <- read.csv("datasets/MarketingDirecto.csv")

#Obteniendo la frecuencia porcentual de la variable: Historial de compra
pi<-prop.table(table(marketingData$Catalogos))*100
pi
# Mostrando la distribución de la variable: Historial de Compra

barplot(
  pi,
  col=c("#009E73","#E69F00","#56B4E9", "#D55E00"),
  main="Distribución de Catálogos", 
  xlab="Catálogos", 
  ylab="Porcentaje de compras")