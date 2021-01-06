# Indexacion y Acceso a elementos de un factor
grados <- c("bachiller","licenciado","licenciado","maestro","doctor","maestro","estudiante",
              "maestro","doctor","licenciado","maestro","maestro","bachiller","maestro",
              "doctor","maestro","licenciado","maestro","maestro","maestro")

grados_f <- factor(grados)    # Creamos el factor "grados".

table(grados_f)

grados_f[6]   # Utilizamos el factor "grados_rec". Accedemos a la ubicación del sexto elemento del factor.

grados_f[2]   # Accedemos a la ubicación del segundo elemento del factor.

grados_f[1:3] # Accedemos a los elementos del primer al tercer

grados_f[-5]

# Extraemos elementos ubicados entre el tercer y sexta posición
grados_f[3:6]

# Podemos generar un subconjunto que también es un factor y con los mismos niveles
sub.grado_f <- grados_f[3:6]
class(sub.grado_f)

levels(sub.grado_f)
