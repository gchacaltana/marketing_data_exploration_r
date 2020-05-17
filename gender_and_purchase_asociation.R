# Importando base de datos en formato .CSV
marketingData <- read.csv("datasets/MarketingDirecto.csv")

HistoryByGenderTable=table(marketingData$Genero,marketingData$Historial)
HistoryByGenderTable


# Asociación de variables - distribución condicional
AssocTable=prop.table(HistoryByGenderTable,margin=1)
AssocTable

# Gráfico de Barras agrupadas
barplot(
  t(AssocTable),
  col=2:4,
  beside = T,
  xlab="Género",
  ylab="Porcentaje de compras",
  main="Distribución del historial de compra según género del cliente")
  legend("topright",legend=levels(marketingData$Historial),col=2:4,pch=15,
  title="Historial de Compra"
  )

# Gráfico de Barras Componentes
par(mar=c(5.1, 4.1, 4.1, 8.1), xpd=TRUE) #Adicionar espacio extra
barplot(
  t(AssocTable),
  col=2:4,
  xlab="Género",
  ylab="Porcentaje de Compras",
  main="Distribución del historial de compra según género del cliente")

legend("topright", inset=c(-0.27,0),legend=levels(marketingData$Historial),
  col=2:4,pch=15,
  title="Historial de Compra")
