# Importando base de datos en formato .CSV
marketingData <- read.csv("datasets/MarketingDirecto.csv")

# Mostrando primeros registros del dataframe
head(marketingData)

# Mostrando estructura de dataframe (DF)
str(marketingData)

# Mostrando histograma de historial de ventas
hist(
  marketingData$Monto,
  breaks=12, 
  col="red",
  main="Histograma de Historial de Ventas", 
  xlab="Ventas en S/.", 
  ylab="Cantidad de Ventas"
  )
