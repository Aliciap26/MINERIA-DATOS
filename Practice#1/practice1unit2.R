#1. Buscar una fuente de datos con formato csv(Tema libre)
#2. Leer el csv y analizar los datos con R 
#3. Generar tres gráficas con R que cuente la historia de los datos, 
#la primera que sea una gráfica de dispersión de puntos, 
#la segunda que sea una gráfica en facetas y 
#la tercera una gráfica que nos diga algo estadístico como la distribución que tienen los datos y 
#que contenga la capa temas (theme). 

cereal <- read.csv(file.choose())

head(cereal)

library(ggplot2)

#plot
#gráfica de dispersión de puntos
ggplot(cereal, aes(x=calories, y=protein, color=name)) + geom_point()

#gráfica de dispersión de facetas
facetas <- ggplot(cereal, aes(x=calories, y=fat, color=name))

facetas + geom_point() + facet_grid(name~.)

#gráfica de distribucion 

ggplot(cereal, aes(x= fat, y = calories))+ geom_point()+ geom_point(aes(color= protein ))+ theme_grey ()