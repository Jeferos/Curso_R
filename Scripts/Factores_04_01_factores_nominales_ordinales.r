#Factor Nominal
profesiones <- c("Economista","Contador","Data Scientist","MatemÃ¡tico","Profesor","Ingeniero",
                   "MatemÃ¡tico","Profesor","Economista","Contador","Profesor","Profesor",
                   "Data Scientist","Ingeniero","Ingeniero","Economista","Profesor","Contador")
sueldo <- c(9800, 5500, 8500, 4300, 4200, 6800, 5300, 4200, 2900, 11000, 6800, 3600,
              7200, 4800, 9800, 5400,6000,5400)

fact_profesiones <- as.factor(profesiones)    # Transformamos un vector de caracteres a un factor.
class(fact_profesiones)                       # Consultamos la clase del objeto "fact_profesiones"

salario_medio <- tapply(sueldo, fact_profesiones, mean)  
salario_medio

# Factor Ordinal
result <- c(0,1,3,0,1,1,2,2,2,1,3,0,2,1,3,1,1,0,0,2,1,1,2,0,0,1,0,1,2,1)  # Creamos un vector numérico

fact_result <- as.factor(result)                                     # Transformamos un vector numérico a factor.
levels(fact_result) <- c("Regular","Bueno","Muy Bueno","Excelente")  # Asignamos los niveles de "menos" a "más".
  
fact_result <- ordered(fact_result)                                  # Ordenamos el factor resultados
fact_result 


