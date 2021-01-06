# Etiquetado de Factores
x <- c(3,2,4,5,6,4)             # Creamos un vector numérico.
y <- c(0,0,1,1,0,1)             # Creamos otro vector numérico, que refleja información cualitativa.
cbind(x,y)                      # Combinamos por columnas, debido a que el número de filas es el mismo.

num_hijos <- x                                        # Cambiamos el nombre.
sexo <- factor(y, labels = c("masculino","femenino")) # Usamos labels para indicar las etiquetas.
class(y)                                              # Consultamos la clase, vemos que es "numeric".

class(sexo)                                           # Consultamo la clase, vemos que es "factor".

data_f <- data.frame(num_hijos, sexo)   # Construimos un data frame para  realizar algún análisis o consultas.
plot(data_f$sexo, data_f$num_hijos)     # Se asigna el eje X al factor, y el eje Y a la variable numérica

mean(data_f$num_hijos)  

summary(data_f)

summary(data_f$num_hijos)

summary(data_f$sexo)

data_f[data_f$sexo == "masculino", ]  

data_f[data_f$num_hijos <= 3, ]
