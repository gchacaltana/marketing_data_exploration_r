# Importando base de datos en formato .CSV
marketingData <- read.csv("datasets/MarketingDirecto.csv")

# Mostrando la distribución de la variable: Salario

h1<-hist(
  marketingData$Salario,
  main="Distribución de salarios de los clientes",
  breaks = "Sturges",
  xlab="Salario en S/.",
  col=2:7,
  ylab="Cantidad de Clientes")
