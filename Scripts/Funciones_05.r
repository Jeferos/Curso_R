s <- function(x, y)   # "s" es el nombre de la función "suma", los argumentos son "x" e "y".
  {                     # La expresión de la función inicia desde este llaves.
    x + y               # "x + y" es la expresión que R ejecutará¡ y es el "cuerpo" de la función.
  }                     # Esta llave cierra la expresión de la función.
  
s(1,2)                # Introducimos los valores de los argumentos para ejecutar la función.
s(sqrt(2), 4)
s(log(10), -log(2))

hipotenusa <- function(x,y) { sqrt(x^2 + y^2)}       # Creamos la función.  
hipotenusa(3,4)                                      # Probamos la función creada.

cu <- function(x) { x^3 }     # Expresión que R ejecutará.  
x0 <- (-6:6)                  # Creamos el vector de valores iniciales para el argumento x.
cu(x0)                        # Evaluamos la función "c" en el vector de valores iniciales "x0".
plot(cu(x0))                  # Graficamos la función para evaluar la función cúbica creada.

ma <- function(x) { sum(x)/length(x) }  # Creamos la expresión que R ejecutará. 
x <- c(1:10)                            # Creamos el vector x que va de 1 a 10.
ma(x)                                   # Llamamos la función.
mean(x)                                 # Comprobamos mediante la función mean().

vari <- function(x) { sum((x-mean(x))^2)/(length(x)-1) }     # Función varianza.  
x <- c(1:10)                                                   # Vector de datos.
vari(x)                         # Llamamosla función varianza creada.
var(x)                          # Comprobamos si la función devuelve correctamente la varianza de x.
