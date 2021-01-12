setwd("E:/ADMIN/Documents/ImportaDatosR")

# Creamos el conjunto de datos que luego vamos a exportar.
data01 <- read.table("libertad_prensa.txt", header = TRUE, sep = ",", dec = ".")

# write.table(x = NombreDeTuDataAExportar, file = "NombreDeLaDataACargar.ConSuExtensión", DemásArgumentos)
  
write.table(x = data01, file = "expodata.txt", sep = ",", na = "NA", dec = ".", row.names = TRUE, col.names = TRUE)  

# Argumentos de la función write.table():
# - x         : el nombre del objeto a exportar (en este caso, un data frame o una matriz)
# - file      : el nombre o extensión y ruta del archivo creado. Si solo colocamos el nombre, el archivo se crea en el "wd". 
# - sep       : el caracter que se usará como separador de las columnas.
# - row.names : argumento que permite incluir (o no) nombre de las filas del data set.
# - col.names : argumento que permite incluir (o no) nombe de las columnas del data set.

# En nuestro ejemplo, exportamos el objeto "data01" a un documento de texto y será¡ guardado en nuestro wd.

# Ahora, probaremos cargar/importar el data set exportado

expodata <- read.table(file = "expodata.txt", header = TRUE, sep = ",")

# Esta función nos permite exportar datos a archivos con extensión .csv.

# Ejemplo:

write.csv(x = data01, file = "exporta2.csv") # Exportamos el data set "data01" y lo llamamos "exporta" con extensión ".csv"

# Probamos cargando/importando el data set importado en formato .csv.

exporta2 <- read.csv("exporta2.csv", header = TRUE)      # Usamos read.csv(), la cual es una opción de lectura de la función read.table()
head(exporta2)
