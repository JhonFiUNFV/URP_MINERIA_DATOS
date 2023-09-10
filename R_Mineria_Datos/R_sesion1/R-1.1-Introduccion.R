# ==============================================================================
#   Introducción a R: Aspectos Básicos
# ==============================================================================

# R como calculadora
# ==================
1+2      # Suma
4-7      # Resta
3*5      # Multiplicación
5/2      # División 
2^5      # Potencia: equivalente a 2**5

5%/%2    # División entera (sin decimales)
5%%2     # Residuo (módulo) de la división sin decimales


# Funciones matemáticas
# =====================
sqrt(16)           # Raiz cuadrada
abs(-4.5)          # Valor absoluto
factorial(4)       # Factorial de 4 (4!)

exp(1)             # Función exponencial
log(100)           # Función logaritmo natural
log(100, base=10)  # Función logaritmo especificando la base
log(100, 10)

sin(pi/2)         # Seno (argumento en radianes)
cos(pi/2)         # Coseno (argumento en radianes)
tan(pi/4)         # Tangente (argumento en radianes)

max(4,2,5,1)      # Máximo
min(4,2,5,1)      # Mínimo
sum(4,2,5,1)      # Suma 
prod(4,2,5,1)     # Producto

round(3.67)             # Redondeo
round(3.67, digits=1)
floor(3.67)             # Redondeo al entero inferior
ceiling(3.67)           # Redondeo al entero superior
signif(3.67, digits=2)  # Redondeo usando una cantidad de cifras significativas

# Otras funciones:
# log10(), log2(), asin(), acos(), atan(), sinh(), cosh(), tanh()
# asinh(), acosh(), atanh(), trunc(), etc.


# Ayuda
# =====
help.start()            # Ayuda de R
help.search("solve")    # Comandos relacionados con la cadena "solve"
??solve                 # Similar a help.search

?log                    # Ayuda sobre comando log
help("log")             # similar a ?log

example(log)            # Ejemplo de la función "log"
args(log)               # Argumentos de la función "log"

help("^")               # Ayuda para operadores aritméticos
?"^"


# Creación de variables
# =====================

# Forma usual:
x <- 3            # El valor 3 se asigna a x
y = 5
z <- x^2 +y + 3
z

# Forma alternativa:
30 -> var1
60 -> var2

# Se puede asignar una variable a una función
MiFuncion <- sqrt
MiFuncion(81)

# Variables especiales
pi       # Pi
Inf      # Infinito
NA       # No definido (Not a Number)


# Tipos de datos
# ==============

# Datos Lógicos
v1 <- TRUE       # Equivalente a: v1 <- T
v2 <- FALSE      # Equivalente a: v2 <- F

class(v1)

v1 & v2      # and
v1 | v2      # or
!v1          # not

v3 <- 2==3

# Numérico (punto flotante)
v10 <- 2.3
v11 <- sqrt(2)
class(v10)

# Entero
v20 <- -5L
v21 <- 7L
class(v20)

# Cadena de caracteres
v30 <- "hola"
v31 <- 'hola'
class(v30)

# Número complejo
vcomp <- 2+3i
class(vcomp)

# Conversión
v40 <- 40
class(v40)
v41 <- as.integer(v40)
class(v41)


# ESPACIO DE TRABAJO
# ==================

getwd()                         # Obtener la ruta del espacio de trabajo actual
# setwd("C:/Usuario/Docs")      # Establecer la ruta de trabajo

# Variables del espacio de trabajo ("workspace")
ls()

# Eliminación de elementos del espacio de trabajo
rm(df)
rm("x", "y")

# Almacenamiento de todo el espacio de trabajo (todas las variables)
save.image("espacio1.RData")

# Eliminación de todos los elementos del espacio de trabajo
rm(list=ls())

# Carga del espacio de trabajo almacenado (variables)
load("espacio1.RData")

# Almacenamiento de solo algunas variables del espacio de trabajo
save(v1, v2, file = "espacio2.RData")

