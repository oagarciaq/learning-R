##############################################################################
################################# cAPITULO 3###################################
##############################################################################

# ·································Atomic vectors·······························
die <- c(1, 2, 3, 4, 5, 6)


is.vector(die) # comprueba si es un vector

# Se pueden crear vectores atòmicos de un solo valor
five <- 5
is.vector(five)
length(five)
length(die)

# atomic vector can only store one type of data
int <- 1L # Marco un valor como entero colocando la L desupues del numero
text <- "ace" # Entre comillas me defne un valor como caracter

# ·············Integers·············
a <- 99L
typeof(a)

int <- c(1L, 5L)
typeof(int)
text <- c("ace", "hearts")

# ·············Doubles··············
# Por defecto los valores numèricos son del tipo double
die <- c(1, 2, 3, 4, 5, 6)
typeof(die)


sqrt(2)^2 - 2 # Devolverà el valor 4.440892e-16 porque la raìz sqrt(2) no cabe en los 16bits de los enteros


# ············Characters············
text <- c("Hello", "World")
text
typeof(text)
typeof("Hello")

# ·············Logicals·············
logic <- c(TRUE, FALSE, TRUE)
logic2 <- c(T, F, T)
logic
typeof(logic)
typeof(logic2)

# ·······Complex and raw············
comp <- c(1, 1i, 1, 2i, 1 + 3i)
typeof(comp)

raw(3)
typeof(raw(3))

# ······························...............·································

hand <- c("ace", "king", "queen", "jack", "ten")
typeof(hand)

# ··································Attributes·································..
attributes(die)

# ··············Names··············
names(die)
names(die) <- c("one", "two", "three", "four", "five", "six") # Define los nombres de las salidas del vector

names(die)
die

attributes(die)
die + 1 # Suma los valores pero los tìtulos permanecen iguales

names(die) <- NULL # Elimina el atributo names del vector die
die

# ················Dim···············
dim(die) <- c(2, 3) # reorganize die into a 2 × 3 matrix
dim(die) <- c(3, 2) # reorganize die into a 3 × 2 matrix
dim(die) <- c(1, 2, 3) # regorganize die into hypercube
die

# ·····································Matrices··································
m <- matrix(die, nrow = 2)
m <- matrix(die, nrow = 2, byrow = TRUE)

# ····································Arrays·····································
ar <- array(c(11:14, 21:24, 31:34), dim = c(2, 2, 3))
ar

# ······························...............·································
hand1 <- c(
  "ace", "king", "queen", "jack", "ten", "spades", "spades",
  "spades", "spades", "spades"
)
m1 <- matrix(hand1, nrow = 5)
m2 <- matrix(hand1, ncol = 2)
m3 <- dim(hand1) <- c(5, 2)
m4 <- array(hand1, dim = c(5, 2))
m1
m2
m3
m4


hand2 <- c(
  "ace", "spades", "king", "spades", "queen", "spades", "jack",
  "spades", "ten", "spades"
)
matrix(hand2, nrow = 5, byrow = TRUE)
matrix(hand2, ncol = 2, byrow = TRUE)

# ····································Class·····································
dim(die) <- c(2, 3)
typeof(die) # Continua siendo del tipo double

class(die) # Por su parte la clase sì es diferente

attributes(die)

class(5)
class("Hello")
# ··············Date and Times············
Sys.time() # returns the current time on your computer
now <- Sys.time()
now
typeof(now)
class(now)
unclass(now)

mil <- 1000000
class(mil) <- c("POSIXct", "POSIXt") # que dia fue hace un millon de segundos
mil

# ················Factors·················
gender <- factor(c("male", "female", "female", "male")) # convierte un objeto en un factor

typeof(gender)
class(gender)
attributes(gender)
unclass(gender)
gender
as.character(gender)

# ······························...............·································
card <- c("ace", "hearts", 1)
card # Los valores se convierten todos al mismo tipo de dato, en ese caso character


# ······························.....Coercion.·································
# Es la tendencia de R a modificar el tipo o los tipos de datos presentes en un vector
# en aras de igualar el mismo tipo a todos
# Por ejemplo cuando trato de sumar valores lògicos los convierte en valores enteros
sum(c(TRUE, TRUE, FALSE, FALSE))
sum(c(1, 1, 0, 0))


as.character(1)
as.logical(1)
as.numeric(FALSE)

# ································.....Listas···································
# Almacena màs de un tipo de datos en el mismo "vector"
list1 <- list(100:130, "R", list(TRUE, FALSE))
list1

# ······························...............·································
card <- list("ace", "hearts", 1)
card

df <- data.frame(
  face = c("ace", "two", "six"),
  suit = c("clubs", "clubs", "clubs"), value = c(1, 2, 3)
)
df

typeof(df)
class(df)
str(df)


df3 <- data.frame(
  face = c("ace", "two", "six"),
  suit = c("clubs", "clubs", "clubs"), value = c(1, 2, 3),
  stringsAsFactors = FALSE
)
# stringsAsFactors = FALSE -> Hace que los valores del df no se conviertan autmaticamente en factores
df3

# ······························...............·································
deck <- data.frame(
  face = c(
    "king", "queen", "jack", "ten", "nine", "eight", "seven", "six",
    "five", "four", "three", "two", "ace", "king", "queen", "jack", "ten",
    "nine", "eight", "seven", "six", "five", "four", "three", "two", "ace",
    "king", "queen", "jack", "ten", "nine", "eight", "seven", "six", "five",
    "four", "three", "two", "ace", "king", "queen", "jack", "ten", "nine",
    "eight", "seven", "six", "five", "four", "three", "two", "ace"
  ),
  suit = c(
    "spades", "spades", "spades", "spades", "spades", "spades",
    "spades", "spades", "spades", "spades", "spades", "spades", "spades",
    "clubs", "clubs", "clubs", "clubs", "clubs", "clubs", "clubs", "clubs",
    "clubs", "clubs", "clubs", "clubs", "clubs", "diamonds", "diamonds",
    "diamonds", "diamonds", "diamonds", "diamonds", "diamonds", "diamonds",
    "diamonds", "diamonds", "diamonds", "diamonds", "diamonds", "hearts",
    "hearts", "hearts", "hearts", "hearts", "hearts", "hearts", "hearts",
    "hearts", "hearts", "hearts", "hearts", "hearts"
  ),
  value = c(
    13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 13, 12, 11, 10, 9, 8,
    7, 6, 5, 4, 3, 2, 1, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 13, 12, 11,
    10, 9, 8, 7, 6, 5, 4, 3, 2, 1
  )
)


# ······························...Loading data·································
deck2 <- read.csv("~/deck.csv")
View(deck2)
typeof(deck2)
class(deck2)
typeof(deck2$value)


head(deck2) # Muestra los primeros 6 datos
head(deck2, 10) # Modofica la cantidad de datos que va mostrar (10 en este caso)
tail(deck2) # Muestra los ultimos 6 datos
tail(deck2, 10) # Modifica la cantidad de datos que va mostrar (10 en este caso)

# Muestra otras tipos de orìgenes de datos ANEXO D

# ······························...Saving Data·································
write.csv(deck, file = "cards.csv", row.names = FALSE)

getwd() # MUESTRA DONDE GUARDO EL NUEVO ARCHIVO



##############################################################################
################################# cAPITULO 4###################################
##############################################################################

# ······························...Selecting Values·································

# Positive integers
deck[1, 1]
deck[1, c(1, 2, 3)] # Extrae màs de un valor deck[1, 1],deck[1, 2],deck[1, 3]

new <- deck[1, c(1, 2, 3)]
deck[c(1, 1), c(1, 2, 3)]

vec <- c(6, 1, 3, 6, 10, 5)
vec[1:3]

deck[1:2, 1:2] # Data.Frame
deck[1:2, 1] # Vector (Single column)
deck[1:2, 1, drop = FALSE] # Una columna como dataframe

# Negative Integers
deck[-(2:52), 1:3]

# Blank spaces
deck[, 1] # Muestra los datos solo de la columna o la fila dependiendo del espacio en blanco que se deje


# Logical values
deck[1, c(TRUE, TRUE, FALSE)]

rows <- c(
  TRUE, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F,
  F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F,
  F, F, F, F, F, F, F, F, F, F, F, F, F, F
)
deck[rows, ]

# Names
names(deck)
deck[1, c("face", "suit", "value")]
deck[, "value"]

# ·································Deal a card···································

deal <- function(cards) { # Funcion que devuelve
  cards[1, ] # la primer fila de
} # cualquier vector

deal(deck)

# ······························Shuffle de deck··································
deck3 <- deck2[1:52, ] # Obtiene los valores del 1-52
deck3


deck4 <- deck[c(2, 1, 3:52)] # reorganiza los datos (2,1,3,4,5,6...52)
deck4


random <- sample(1:52, size = 52) # Devuelve valores aleatorio entre 1 y 52
random

deck4 <- deck[random, ] # Devuelve el listado de valores correspondiente e las filas ingresadas con la variable random
head(deck4)

shuffle <- function(cards) { # Devuelve listado de valores
  random <- sample(1:52, size = 52) # aleatorios para el vector dado
  cards[random, ] # (Da valores diferentes en cada ejecuciòn)
}

shuffle(deck3)
deal(shuffle(deck3))


# ····················Dollar Signs and Double Brackets···························
deck$value

mean(deck$value)
median(deck$value)

lst <- list(numbers = c(1, 2), logical = TRUE, strings = c("a", "b", "c"))
lst


lst[1] # Me devuelve una lista. Las funciones como sum, no trabajan con lista por tal razòn es mejor usar el $
lst$numbers
sum(lst$numbers)
lst[[1]] # Con dole corchete funciona igual que el simbolo $


lst["numbers"] # Devuelve una lista màs pequeña
lst[["numbers"]] # Devuelve los valores que hay dentro de un elemento de una lista


##############################################################################
################################# cAPITULO 5###################################
##############################################################################

# ··························Changing Values in Place·····························

vec <- c(0, 0, 0, 0, 0, 0) # vector creado
vec
vec[1]
vec[1] <- 1000 # Vector modificado en la posiciòn 1
vec

vec[c(1, 3, 5)] <- c(1, 1, 1) # Modifica varias posiciones al mismo tiempo
vec

vec[4:6] <- vec[4:6] + 1 # A las posiciones del 4:6 le sumo el valor del 1
vec

vec[7] <- 0 # Crea una nueva posiciòn en el vector
vec

deck2$new <- 1:52 # Pued agregar nuevas variables al data set

deck2$new <- NULL # Elimina la variable (Columna)

deck2[c(13, 26, 39, 52), ] # Acesso al AS (ace) (filas)
deck2[c(13, 26, 39, 52), 3] # Traigo solo los valores de al fila 3
deck2$value[c(13, 26, 39, 52)] # Traigo solo los valores de al fila 3

deck2$value[c(13, 26, 39, 52)] <- c(14, 14, 14, 14) # Cambie el valor de la columna value de 1 a 14
deck2$value
deck2$value[c(13, 26, 39, 52)] <- 14
deck2$value


head(deck2, 13)

deck3 <- shuffle(deck)
deck3

# ·····························Logical Subsetting································
vec
vec[c(FALSE, FALSE, FALSE, FALSE, TRUE, FALSE, FALSE)]

# Logical Tests
1 > 2

1 > c(0, 1, 2)

c(1, 2, 3) == c(3, 2, 1)


1 %in% c(3, 4, 5)
c(1, 2, 3, 4) %in% c(3, 4, 5)

b <- 1
a <- b
a
c <- b
c


deck2$face
deck2$face == "ace" # Compara los valores y devuelve true si es verdadero

sum(deck2$face == "ace") # suma los valores sin son igual a ace
deck3$face == "ace"

deck3$value[deck3$face == "ace"] # Devuelve solo los valores que son iguales a ace

deck3$value[deck3$face == "ace"] <- 14 # Aquellos valores que sean igual a ace, les cambio el valor de la comulna value por 14
deck3$value

# Game: Hearts

deck4 <- deck
deck4$value <- 0
head(deck4, 13)

deck4$value[deck4$suit == "hearts"] <- 1

deck4[4] <- 0 # Crea una nueva columna
deck4$V4[deck4$suit == "hearts"] <- 1 # Si el valor de la columna suit es igual a hearts, establece el valor de uno en la clumna V4

deck4[deck4$face == "queen", ]
deck4[deck4$suit == "spades", ]


# Boolean Operators

a <- c(1, 2, 3)
b <- c(1, 2, 3)
c <- c(1, 2, 4)

a == b
b == c

a == b & b == c


# Para encontrar la reina de espadas entonces:
queenOfSpades <- deck4$face == "queen" & deck4$suit == "spades"
queenOfSpades

deck4[queenOfSpades, ]
deck4$value[queenOfSpades]
deck4$value[queenOfSpades] <- 13

deck4[queenOfSpades, ]


w <- c(-1, 0, 1)
x <- c(5, 15)
y <- "February"
z <- c("Monday", "Tuesday", "Friday")

w > 0
10 < x & x < 20
y == "February"
all(z %in% c(
  "Monday", "Tuesday", "Wednesday", "Thursday", "Friday",
  "Saturday", "Sunday"
))
z == c("Monday", "Tuesday", "Wednesday")

# Game: Blackjack


deck5 <- read.csv("~/deck.csv") # Obtengo los datos
head(deck5, 13) # Realizo una muestra de los primeros 13 elementos


facecard <- deck5$face %in% c("king", "queen", "jack") # Reviso dentro de la columna
# Face cuales cartas son iguales a king, quen y jack y me devuelve verdadero en caso de ser asì
facecard
deck5[facecard, ] # Me devuelve los datos (filas) que tienen son verdaderos dentro de la variable facecard


deck5$value[facecard] <- 10 # Establesco el valor de 10 a todos que son verdaderos en a variable facecard
head(deck5, 13)


# ·····························Missing Information································
c(NA, 1:50)
mean(c(NA, 1:50), na.rm = TRUE) # R ignorarà los valores NA cuando incluye el argumento na.rm = TRUE

is.na(NA) # Me permite conocer si el valor es un NA
vec <- c(1, 2, 3, NA)
is.na(vec)


deck5$value[deck5$face == "ace"] <- NA # Establece el valor NA a todos los datos cuyo dato en face sea igual a "ace"
head(deck5, 13)


##############################################################################
################################# cAPITULO 6###################################
##############################################################################

# ································Environments··································
library(usethis)
library(devtools)
library(pryr) # Anteriormente la funciòn parenvs estaba en la liberìa devtools ahora està en pryr
parenvs(all = TRUE) # Muestra un listado de environments que està usando la sesiòn actual de R


as.environment("package:stats") # Toma el nombre del environment y devuelve el correspondiente environment


globalenv() #
baseenv() # Funciones de acceso
emptyenv() #

parent.env(globalenv()) # Me permite ver los environments de nivel superior


parent.env(emptyenv()) # el environment empty es el unico que no tiene nivel superior


ls(emptyenv()) # Muestra los objetos guardados en un environment
ls(globalenv())

ls.str(globalenv()) # Muestra todosls objetos guardados en un environment y muestra un poco acerca de cada objeto
# Guarda todos los objetos que se han creado


ls(baseenv())


head(globalenv()$deck, 3) # Usando el sìmbolo de peso podemos acceder a un objeto en un environment especìfico


assign("new", "Hello Global", envir = globalenv()) # Permite guardar un objeto en un environment especìfico
ls(globalenv())
globalenv()$new


# ·····························The Active Environment···························

environment() # Me muestra el environment que se encuentra activo


show_env <- function() { # cada vez que corra la funciòn
  list(
    ran.in = environment(), # se crea un environment donde el
    parent = parent.env(environment()), # env. de nivel superior fue aquel
    objects = ls.str(environment())
  ) # que se creò de primero
}

show_env()

environment(show_env) # El principal environment de la funcion es el env. global
parenvs(all = TRUE)
# Todo aquello que se ejecute por còdigo va al env. global


show_env <- function() {
  a <- 1
  b <- 2 # Guardo los objetos en el environment de la funciòn, lo que garantinza que
  c <- 3 # que cualquier objeto creado por la funciòn se almacene en un lugar seguro y apartado del resto de codigo
  list(
    ran.in = environment(),
    parent = parent.env(environment()),
    objects = ls.str(environment())
  )
}
show_env()



foo <- "take me to your runtime"
show_env <- function(x = foo) { # Si la funcion tiene argumentos R copiarà cada
  list(
    ran.in = environment(), # argumento al environment en ejecucion
    parent = parent.env(environment()),
    objects = ls.str(environment())
  )
}


show_env()

--------------------------------------------------------------------------------

  deal <- function() {
  deck[1, ]
}

environment(deal)
deal() # Si creo otra variable llamada deck en el codigo remplazarà el valor dado en la funciòn deal
# Por ejemplo si quitamos la carta que està de primera en el objeto

DECK <- deck[-1, ]


deal <- function() {
  card <- deck[1, ] # En esta funciòn se remueve la primer carta pero no se mpdifica la variable
  deck <- deck[-1, ] # o si la utilizo màs adelante no se modificarà porque estarà en
  card # un environment diferente
}
# Ees decir que crea una copia dentro de su environment màs no modifica la variable global

deal <- function() { # Este codigo por su parte si modifica la variable global
  card <- deck[1, ]
  assign("deck", deck[-1, ], envir = globalenv()) # Sobreescribo en la variable global que tiene el mismo nombre
  card
}
deal()



shuffle <- function(cards) {
  random <- sample(1:52, size = 52)
  cards[random, ]
}
# En este caso la fucnion no desorganiza el objeto si no que devuelve una copia desordenada del objeto principal

head(deck, 3) # Observamos que el resultado serà:
## face suit value
## nine spades 9
## eight spades 8
## seven spades 7

# si ejecutamos la funciòn
a <- shuffle(deck)

# Y volvemos a ejecutar la muestra nos damos cuenta que da el mismo resultad porque no se modificò la variable global
head(deck, 3)
## face suit value
## nine spades 9
## eight spades 8
## seven spades 7
# Es decir que el objeto serà el mismo durante todo el codigo pese a que se està modificando el valor dentro de una funciòn

# Si quiero que el objeto cambie cada que ejecuto el codigo qudarìa de la siguiente forma
shuffle <- function() {
  random <- sample(1:52, size = 52)
  assign("deck", DECK[random, ], envir = globalenv()) # Crea una copia de DECK y la pega dentro del objeto deck que està siendo convertido a un objeto global
}
shuffle()


# ····································Closures···································

# Como esas variables estàn en el global environment puede que se presten para cambios por error
# O incluso que lleguen a eliminarse, por lo que se puede guardar en algun enteorno seguro para que no suceda
# La solucion puede ser guardarlo en el mismo environment de la funciòn


setup <- function(deck) { # Esta funcion guarda una copia de deck en DECK (en la funciòn)
  DECK <- deck
  DEAL <- function() {
    card <- deck[1, ]
    assign("deck", deck[-1, ], envir = globalenv())
    card
  }
  SHUFFLE <- function() {
    random <- sample(1:52, size = 52)
    assign("deck", DECK[random, ], envir = globalenv())
  }
}


setup <- function(deck) { # La misma funciòn pero devuelve todos los valores
  DECK <- deck # ya que la anterior solo devuelve un valor
  DEAL <- function() {
    card <- deck[1, ]
    assign("deck", deck[-1, ], envir = globalenv())
    card
  }
  SHUFFLE <- function() {
    random <- sample(1:52, size = 52)
    assign("deck", DECK[random, ], envir = globalenv())
  }
  list(deal = DEAL, shuffle = SHUFFLE) # Valores devueltos
}

cards <- setup(deck) # Guardo las funciones devueltas por la funcion setup
cards


deal <- cards$deal # Guardo los valores de la funciòn ahora sì en objetos dentro
shuffle <- cards$shuffle # del global environment

deal
## function() {
## card <- deck[1, ]
## assign("deck", deck[-1, ], envir = globalenv())
## card
## }
## <environment: 0x7ff7169c3390>

shuffle
## function(){
## random <- sample(1:52, size = 52)
## assign("deck", DECK[random, ], envir = globalenv())
## }
## <environment: 0x7ff7169c3390>

environment(deal)
environment(shuffle)


setup <- function(deck) {
  DECK <- deck
  DEAL <- function() {
    card <- deck[1, ]
    assign("deck", deck[-1, ], envir = parent.env(environment()))
    card
  }
  SHUFFLE <- function() {
    random <- sample(1:52, size = 52)
    assign("deck", DECK[random, ], envir = parent.env(environment()))
  }
  list(deal = DEAL, shuffle = SHUFFLE)
}
# La diferencia entre esta funciòn y la anterior se encuentra en el one noe (o en el libro)
# Y es bàsicamente que en la anterior sigue guardandose la variable en env. global
# Cuando podemos guararlas en el setup y en cierto modo seguir siendo una variable global
# estando màs seguras allì. Se puede modificar o elimnar cualquier objeto global
# que una copia estarà segura en el env.
cards <- setup(deck)
deal <- cards$deal
shuffle <- cards$shuffle

rm(deck) # Remueve un objeto de el env. global
shuffle() # Apenas ejecuto el còdigo se crea de nuevo el objeto deck
deal()
