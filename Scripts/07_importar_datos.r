#choose.files()
#setwd("E:/ADMIN/Documents/ImportaDatosR")

# Recuerda que los datos que importemos deben de estar en tu "wd" y los datos que exportemos se almacenarán en dicho directorio.
# Asimismo, recuerda cambiar "\" por "/", para que no tengas problemas.
#file.choose()

file.choose()                               # Utilizamos para buscarla ruta en la que importaremos/exportaremos la data.
setwd("E:/ADMIN/Documents/ImportaDatosR")   # Fijamos la ruta como directorio de trabajo
getwd()

data01 <- read.table("libertad_prensa.txt")
head(data01)

# Importamos considerando los detalles de la data
  
data01 <- read.table("libertad_prensa.txt", header = TRUE, sep = ",", dec = ".")
head(data01)

data02 <- read.table("libertad_prensa_sinnombre.txt", header = FALSE, sep = ",", dec = ".")
head(data02)

# Bonus Extra: Colocamos nombres a las variables de una data importada "sin nombre".
  
  names(data02) <- c("codigo", "pais", "anio", "linf", "lsup")
  head(data02)

setwd("E:/ADMIN/Documents/ImportaDatosR")
getwd()

install.packages("readr") # instalamos la paquete readr
library(readr)   # Lo activamos
misdatos <- read_csv("E:/ADMIN/Documents/ImportaDatosR/gapminder.csv")

# Otra forma usando la función file.choose() dentro de readr()
misdatos01 <- read_csv(file.choose())

# De forma similar, podemos leer data sets "con nombre,"sin nombre" y un caso especial con la función readr()
  
# Para el caso en el cual NO tenemos "nombre" (sin encabezado)
misdatos01.1 <- read_csv(file.choose(), skip = 0, col_names = FALSE) 

# Para el caso en el cual SI tenemos "nombre" (con encabezado)
misdatos01.2 <- read_csv(file.choose(), skip = 0, col_names = TRUE)

# Para el caso en el cual SI tenemos "nombre" (con encabezado) pero en una posición diferente al inicio (caso especial)
misdatos01.3 <- read_csv(file.choose(), skip = 3, col_names = TRUE) 
# El argumento skip nos permite elegir desde que "fila" se va a leer los datos
# El argumento col_names nos permite indicar a R si el data set tiene o no encabezados (nombre de las columnas)

setwd("E:/ADMIN/Documents/ImportaDatosR")
getwd()

install.packages("readxl")
library(readxl)

# Importamos archivos excel colocando el nombre de la hoja que quieres leer
# misdatos <- read_excel(file.choose(), sheet = "nombre de la hoja que quieres leer")

misdatos02 <- read_excel(file.choose(), sheet = "primerahoja")
misdatos03 <- read_excel(file.choose(), sheet = "segundahoja")

# 1.4. Importar datos desde la RED de INTERNET
  
setwd("E:/ADMIN/Documents/ImportaDatosR")

# Primero debemos descargar los archivos (data set) de internet.
# https://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data             (UCI Machine Learning Repository)

download.file(url = "https://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data",
            destfile = "data.iris")

# - download.file(): nos permite descargar un archivo de internet. Nos pide como argumento la "url" del sitio.
# - destfile       : es el argumento de la funciónn download.file() que nos permite asignar un nombre a nuestra archivo
#                    y almacenarlo en la memoria de R.

# Una vez cargado, vamos a crear nuestro data set
  
# Usando función read.table()
datos.iris01 <- read.table(file = "data.iris", header = FALSE, sep = ",", dec = ".")    

# Usando la función read_csv() del paquete readr
library(readr)
datos.iris02 <- read_csv(file = "data.iris", skip = 0, col_names = FALSE)              

# Nota1: No se olvide de activar el paquete "readr" antes de usar la función read_csv().
# Nota2: Luego de cargado el data set de internet, usted puede agregar los nombres a las variables con la función names().
