lista01 <- list(1:10, c("A","B","C"))               # Creamos una nueva lista sin especificar nombres.
lista01                                             # Solicitamos que nos devuelva los elementos de toda la lista.

# Ahora, crearemos una lista especificando el nombre de las columnas de la lista.
# En este caso, debemos especificar cada uno de los elementos que la componen.
  
lista02 <- list(uno = 1, dos = c(1:6), tres = rep(1,3))  # Creamos la lista
names(lista02)
is.list(lista02)

# Vemos que los elementos de la lista, a los que llamamos *uno*, *dos* y *tres*, tienen tamaños diferentes.
# La unica forma de almacenarlos en un mismo objeto es mediante una lista.
# Función is.list(): devuelve TRUE si y solo si su argumento es una lista. 

# Creamos una matriz
matriz01 <- matrix(c(1,3,5,7,9,8,6,4,2), 3, 3)
matriz01

# Forzamos a que la matrix sea una lista
lista03 <- as.list(matriz01)
lista03
class(lista03)
names(lista03)

# OBS: podemos observar las diferentes clases de los elementos que componen la lista.

class(lista02)
class(lista02$uno)
class(lista02$dos)
class(lista02$tres)

# Acceso a los elementos con nombre de una lista
  
lista02$uno         # Accedemos al primer elemento de la lista01, llamado "uno".
lista02$dos         # Accedemos al segundo elemento de la lista01, llamado "dos".
lista02$tres        # Accedemos al tercer elemento de la lista01, llamado "tres".

# Acceso a los elementos sin nombre de una lista
  
lista01[[1]]    # Accedemos al primer elemento de la "lista01".
lista01[[2]]    # Accedemos al segundo elemento de la "lista01".

lista03[[1]]
lista03[[2]]
lista03[[3]]
lista03[[4]]  
lista03[[5]]
lista03[[6]]
lista03[[7]]
lista03[[8]]
lista03[[9]]    # Esto es así, pues originalmente este objeto fue creado a partir de una matriz.

lista02$cuatro <- c("lunes","martes","miercoles","jueves","viernes")
lista02$cinco <- matrix(1:9, 3, 3)
lista02

lista02$seis <- data.frame(a = c(1,2,3), b = c(FALSE, TRUE, TRUE), c = c("Alpha", "beta","theta"))
lista02

class(lista02$cuatro)
class(lista02$cinco)
class(lista02$seis)

# También podemos modificar o sustituir un componente de una lista
  
lista02[3] <- list(c(rep(1,4)))

lista02
