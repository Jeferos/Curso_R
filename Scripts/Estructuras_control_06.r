# Ejemplo 01: 
ejemplo01 <- function(x){
if(x <= 0) {abs(x)}
else {x^2 + x + 1}
}
ejemplo01(2)
ejemplo01(0)
ejemplo01(-3)

# Ejemplo 02

ejemplo02 <- function(x) {
if(x<0) {x^2}
else if (x == 0) { 0 }
else { sqrt(x)}
}

ejemplo02(-1)
ejemplo02(-5)
ejemplo02(4)
ejemplo02(0)

# Ejemplo 03

ejemplo03 <- function(x){
if(x > 0) {"El número que colocaste es positivo"}
else if(x == 0) {"El cero no tiene signo"}
else {"El número que colocaste es negativo"}
}

ejemplo03(3.14)
ejemplo03(-3.14)
ejemplo03(0)

# Función promedio de notas

promedio.notas <- function(notas){media <- mean(notas)
if(media >= 13) return("Aprobado")
else {print("No aprobado")}
}
notas <- c(8,9,12,17)
promedio.notas(notas)

objeto <- c(1:10)
  for (i in objeto) {
    a = i + i^2
    print(a)
  }  

# Otro ejemplo
  
suma_n <- function(x){
   for (i in x) {
     s = i*(i+1)/2
     print(s)
     }
   }
 
suma_n(c(1:100))
suma_n(c(1,2,3,4,5,6))

abso <- function(x) {   # Abrimos la función para colocar la expresión.
    if(x<0){-x}           # Condicionamos "si x < 0, la función devuelve su opuesto "-x".
    else(x)               # Caso contrario, la función nos devuelve el valor "x"
  }                       # Cerramos la función.
  
  abso(-6)                # Probamos, con un valor negativo. Devuelve su opuesto de valor.
  abso(6)                 # Probamos, con un valor positivo. Devuelve el mismo valor.

# 2. Función factorial
  
factorial <- function(n) { 
   if (n == 0) return(1)                 # Primera condición, si n=0, que nos retorne 1.
   if (n > 0)  return(n*factorial(n-1))  # segunda condición, si n>0, que nos retorne n(n-1).
   return(NULL)                          # En caso contrario, retornar "NULL".
}

factorial(-1)   # Nos retornará¡ "NULL" debido a que -1 no cumple alguno de las condiciones.
factorial(0)    # Nos retorna "1", dado que cumple la primera condición (n=0).
factorial(5)    # Nos retorna el valor de n(n-1)!, pues cumple la segunda condición (n>0).

# También podemos usar "else" en lugar de "return"
  
factorial1 <- function(n) { 
    if (n == 0) return(1)
    if (n > 0)  return(n*factorial1(n-1))
    else(NULL)    # Establecemos que la función nos devuelva "NULL", en caso contrario.
}
factorial1(-1)
factorial1(0)
factorial1(5)
