# Laboratorio - GestiÛn de datos de red - curadurÌa de datos



# Objetivo: Explorar la organizaciÛn de los datos

# ------------------------------------------------------------------------------------------------------

# En este ejercicio vamos a:

# 1. Cargar nuestra matriz hipotÈtica de datos

# 2. Transformar la matriz en un dataframe

# 3. Conventir un dataframe en matriz





########################################

# LABORATORIO: GestiÛn de datos de red #

########################################





# GestiÛn de datos de red

# 1. Transformar la matriz en un dataframe


install.packages("devtools")
library(devtools)
devtools::install_github("PABalland/EconGeo",force=T)
library (EconGeo)



M = as.matrix(
  
  read.csv("https://raw.githubusercontent.com/PABalland/ON/master/amz.csv" , 
           
           sep = ",", 
           
           header = T, 
           
           row.names = 1))


M






#ejemplo de una matriz de RCA con personas y productos/ paises y productos-industrias

?RCA


EL=get.list(M)
colnames(EL)=c("customer", "products", "content")

# La forma m·s usual de encontrar los datos
EL


MM=get.matrix(EL)
# convertir un dataframe(lista) en matriz

MM

# edge list (lista de aristas(source-target----adyacentes-mis 3 columnas)
EL


# Matriz de adyancencia
get.matrix(EL)

#Buscar Andrea

x=subset(EL, Product="Tie")
x
x=subset(EL,products=="Tie")
x
