# ==============================================================================
#     FACTORS
# ==============================================================================

# Ejemplos
# """"""""""
tam <- factor(c("peq", "grande", "peq", "medio"))    # Factor sin orden
tam
class(tam)

tam <- factor(c("peq", "grande", "peq", "medio"), levels=c("peq","medio","grande"))
tam

levels(tam)                   # niveles


# ==============================================================================
#      LISTAS
# ==============================================================================

# Ejemplos
# """"""""""

lista1 <- list("Juan Perez", 234)
lista1
class(lista1)

lista1[[1]]         # Accede al primer elemento
lista1[[2]]         # Accede al segundo elemento

lista2 <- list(1:3, c("a", "b"), c(TRUE, FALSE, TRUE))
lista2
str(lista2)        # Muestra la estructura de la lista
lista2[[1]]        # Accede al primer elemento

lista3 <- list(nombre="Juan Perez", id=123, notas=c(16,19,18))
lista3

lista3$nombre           # Acceso a los elementos usando $
lista3[["nombre"]]


# ==============================================================================
#     MATRIX (MATRICES)
# ==============================================================================

# Ejemplos
# """"""""""

# Creación usando "matrix"
matrix(data = 1:6, nrow = 2, ncol = 3, byrow = FALSE)
matrix(1:6, 2, 3)

# Creación usando dim
x <- 1:6
dim(x) <- c(2, 3)
x
y <- 1:6								
dim(y) <- c(3, 2)
y

m<- matrix(data = 1:6, nrow = 2, ncol = 3, byrow = FALSE)
dim(m)

# Creación usando cbind, rbind
x <- c(1, 2, 3)
y <- 10:12
cbind(x, y)
rbind(x, y)

# Nombres a las filas y columas
# """""""""""""""""""""""""""""""
z <- matrix(1:6, 2, 3)
z
rownames(z) <- c("A", "B")
colnames(z) <- c("a", "b", "c")
z

# Acceso a datos
# """""""""""""""
z<- matrix(data=c(10:21), nrow = 3, ncol = 4) 
z
z[2, 3]          # Elemento 2,3
z[2, ]           # Fila 2
z[ , 3]          # Columna 3
z[ , 2:3]        # Columnas 2 a la 3
z[1:2, 1:2]      # Filas 1 a la 2, columnas 1 a la 2
z[1:2, c(1,3)]   # Filas 1 a la 2, columnas 1 y 3
