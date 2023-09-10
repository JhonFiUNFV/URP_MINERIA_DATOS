# ==============================================================================
#        VECTORES
# ==============================================================================

# Creación usando c() 
# ===================

c(2, 7, 8, 12, 3, 25)
x <- c(2, 7, 8, 12, 3, 25)
x
class(x)                       # Tipo de datos que contiene el vector

x <- c(2L,7L,8L,12L,3L,25L)    # Fuerza a que los datos sean enteros
x 
class(x)

c(2:5, 3:6)                    # Dos puntos para secuencia de números

y <- c('Italia', 'Francia', 'Alemania')      # " es igual que '
y <- c("Italia", "Francia", "Alemania")


# Vectores con nombre de elemento
# ===============================
y1 <- c(peru="0051", francia="0033", alemania="0039")      # Asignando nombres
y1
y2 <- c("peru"="0051", "francia"="0033", "alemania"="0039")  # Similar a y1
y2

names(y1)     # nombres de los elementos de y1

codigos <- c("0051", "0033", "0039")
pais <- c("peru", "francia", "alemania")
names(codigos) <- pais
codigos


# Creación usando seq()
# =====================

seq(from=1, to=8)
seq(1, 8)
1:8

seq(from=4, to=10, by=2)
seq(4, 10, 2)

seq(from=1, to=10, length=4)
seq(1, 10,   , 4)


# Creación usando rep()
# =====================

rep(1, 4)                     # Repite 4 veces el número 1
rep(4:5, 3)                   # Repite 3 veces la secuencia 4:5
rep(1:4, each = 2)            # Repite cada elemento 2 veces 
rep(1:4, times=2, each=2)     # Repite cada elemento 2 veces y todo 2 veces


# Coerción de vectores
# ====================
# Cuando el tipo de un valor es diferente de otros valores de la lista, R 
# convierte para que sean de tipos similares

x <- c(1, 2, 3)
x
y<- as.character(x)
y

x <- c(1, 2, 3, "a", "b")      # Se convierte en caracter
x
class(x)

y<- as.numeric(x)              # Da warning por coerción
y

x <- c(1, 2, 3, "a", "b")
x
y<- as.factor(x)              # Convierte usando factor   
y

z<- as.numeric(y)
z
z<- as.numeric(as.factor(x))

x <- c("1", "b", "3")
x
as.numeric(x)            # R no puede adivinar el valor numérico asociado con b


# Acceso a los elementos: operador [ ]
# ====================================
x <- c(20, 40, 60, 80, 100, 150) 

x[4]
x[3:5]

x[c(1,3)]        # Selección de solo 2 índices específicos

x[-2]            # Índices negativos son descartados
x[-c(2:4)]
x[-c(2,4)]
x[-2:-5]

y <- c(peru="0051", francia="0033", alemania="0039")
y["peru"]
y[c("alemania", "peru")]


# Otras funciones útiles
# """""""""""""""""""""""""""
x<- c(2,5,3,7,1,5,1)
length(x)           # Longitud (tamaño) de un vector
x[length(x)]        # Último elemento del vector
rev(x)              # Vector en reversa 
unique(x)           # Elementos únicos del vector  


# ==============================================================================
# ORDENAMIENTO
# ==============================================================================

# sort y order
# """"""""""""
x <- c(31, 4, 15, 92, 65)
sort(x)    # Ordena en orden creciente
order(x)   # Retorna los índices

x[order(x)]   # Ordenamiento usando los índices

# max, which.max
# """"""""""""""
x <- c(31, 4, 15, 92, 65)
max(x)            # Valor máximo
which.max(x)      # Índice del máximo

x[which.max(x)]   # Máximo usando el índice

min(x)            # Valor mínimo
which.min(x)      # Índice del valor mínimo 

# rank
# """"
x <- c(31, 4, 15, 92, 65)
rank(x)           # Índices ordenados del vector


# ==============================================================================
# Aritmética de vectores
# ==============================================================================

# Las operaciones se realizan término a término
v1 <- c(69, 62, 66, 70, 70, 73, 67, 73, 67, 70)
100*v1
1000 + v1     # Broadcasting

# Cuando hay 2 vectores, se realiza término a término si tienen igual longitud
# """"""""""
v1 <- c(2, 5, 4, 1)
v2 <- c(10, 30, 50, 20)
v1 + v2
v1 - v2
v1/v2
v1*v2
v1^2

# Nota: ToothGrowth se encuentra por defecto en R
ToothGrowth$len / ToothGrowth$dose

# Si no son del mismo tamaño, el más corto se "repite"
# -------------------
x <- c(1, 2, 3)
y <- c(10, 20, 30, 40, 50)
z <- x+y 
z


# ==============================================================================
# Indexación
# ==============================================================================

# Vector de valores lógicos
z <- c(TRUE, TRUE, FALSE)
any(z)   # TRUE si algún valor lógico de entrada es TRUE
all(z)   # TRUE si todos los valores lógicos de entrada son TRUE

# Indexación usando valores lógicos
# """""""""""""""""""""""""""""""""
df <- read.csv('crimenes.csv')
tasa <- df$total / df$population * 1e5   # Tasa de crímenes
tasa

indice <- tasa < 0.71      # Retorna TRUE o FALSE
indice
sum(indice)                # Cuántos son TRUE
df$state[indice]           # Indexación usando la condición TRUE o FALSE

oeste  <- df$region=='West'
seguro <- tasa <= 1
indice <- oeste & seguro
df$state[indice]

# which
# """""
TFidx <- df$state == "California"  # Seleccionar un valor como TRUE
TFidx
Nind <- which(TFidx)               # Retorna los índices correspondientes a TRUE
Nind

tasa[Nind]     # Se puede indexar con enteros
tasa[TFidx]    # Se puede indexar con Booleanos (igual resultado)

# match
# """""
# Indica qué indices de un 2do vector corresponden a un 1er vector
ind <- match(c("New York", "Florida", "Texas"), df$state)
ind
tasa[ind]    # El resultado se puede usar para indexar (para NY, FL, TX)

# %in%
# """"
# Indica si un elemento de un 1er vector se encuentra en un 2do vector
c("Boston", "Dakota", "Washington") %in% df$state

