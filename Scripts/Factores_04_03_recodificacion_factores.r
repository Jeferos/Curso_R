# Recodificación de Factores
set.seed(666)                         # Fijamos una semilla para evitar que los valores generados cambien 
ingreso <- rpois(100, 3)     # Creamos aleatoriamente un objeto 
summary(ingreso)                     # Mostramos los datos del objeto creado

boxplot(ingreso)                      # Graficamos los datos y observamos que rangos podemos tener

#install.packages("car")       # Instalamos el paquete "car", solo ejecutarlo una vez
library(car)                          # Activamos el paquete "car", donde se encuentra la función recode()
  
ingreso_rec <- recode(ingreso, " c(0,1,2) = 'Extremo';
                    c(3,4) = 'Pobre'; c(5,6) = 'Medio';
                    c(7,max(ingreso)) = 'Rico' ")
is.vector(ingreso_rec)                      # Consultamos si es un vector, La respuesta es TRUE

table(ingreso_rec)                          # Generamos una tabla de frecuencias (absolutas)

ingreso_rec_fact <- as.factor(ingreso_rec)  # Transformamos a factor para poder graficar el objeto 
class(ingreso_rec_fact)                     # Consultamos la clase, y efectivamente es un factor

plot(ingreso_rec_fact)                      # Graficamos. Note que el gráfico no esta ordenado adecuadamente

ingreso_ord <- factor(ingreso_rec,                             # Note que usamos el vector "ingreso_rec".
                       ordered = TRUE,                           # Ordenamos el vector transformado en factor.
                       levels = c("Extremo","Pobre","Medio","Rico"),
                       labels = c("Extremo","Pobre","Medio","Rico"))

plot(ingreso_ord, col = c("red","lightblue","green","gold"))   # Graficamos.


