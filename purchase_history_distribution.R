# Importando base de datos en formato .CSV
marketingData <- read.csv("datasets/MarketingDirecto.csv")

#Obteniendo la frecuencia porcentual de la variable: Historial de compra
pi<-prop.table(table(marketingData$Historial))*100
pi
# Mostrando la distribución de la variable: Historial de Compra

barplot(
  pi,
  col=c("#009E73","#E69F00","#56B4E9"),
  main="Distribución de Historial de Compra", 
  xlab="Historial de Compra", 
  ylab="Porcentaje de clientes")
