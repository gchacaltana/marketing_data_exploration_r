# setwd("/path/marketing_data_exploration_r/")

# Importando base de datos en formato .CSV
marketingData <- read.csv("datasets/MarketingDirecto.csv")

# Mostramos estructura de la base de datos.
str(marketingData)

# Analizando las variables "Historial" y "Genero" para encontrar asociación

# Obteniendo la frecuencia absoluta de la combinación de las dos variables
niHistoryByGenderTable=table(marketingData$Genero,marketingData$Historial)

# Mostrando la frecuencia absoluta de dos variables relacionadas.
# Bajo Medio Alto
# Femenino   161   102   94
# Masculino   69   110  161
niHistoryByGenderTable


# Asociación de variables - distribución condicional
# Obteniendo la frecuencia relativa entre ambas variables
fiAssocTable=prop.table(HistoryByGenderTable,margin=1)

# Mostrando la frecuencia de amnas variables
# Bajo     Medio      Alto
# Femenino  0.4509804 0.2857143 0.2633053
#Masculino 0.2029412 0.3235294 0.4735294
fiAssocTable

# Visualizando gráficos

# Gráfico de Barras agrupadas
barplot(
  t(fiAssocTable),
  col=2:4,
  beside = T,
  xlab="Género",
  ylab="Proproción de compras",
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
  main="Distribución del historial de compra según gÃ©nero del cliente")

legend("topright", inset=c(-0.27,0),legend=levels(marketingData$Historial),
  col=2:4,pch=15,
  title="Historial de Compra")
