roll <- function() {
  die <- 1:6
  dice <- sample(die, size = 2, replace = TRUE)
  sum(dice)
}

library(ggplot2)
x <- c(-1, -0.8, -0.6, -0.4, -0.2, 0, 0.2, 0.4, 0.6, 0.8, 1)
y <- x^3
x
y
qplot(x, y)


x <- c(1, 2, 2, 2, 3, 3)
qplot(x, binwidth = 1)
x2 <- c(1, 1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 4)
qplot(x2, binwidth = 1)
x3 <- c(0, 1, 1, 2, 2, 2, 3, 3, 4)
qplot(x3, binwidth = 1)

# Codigo para graficar la frecuencia de aparicion de resultados al lanzar dos dados
replicate(3, 1 + 1) # Genera 3 repeticiones de la suma 1+1
replicate(10, roll()) # Genera 10 repeticiones de la funcion creada anteriormente

rolls <- replicate(10000, roll())
qplot(rolls, binwidth = 1)

?sqrt
?log10
?sample

??log

# A continuaciòn se cambia el procentaje de apareciòn de uno de los valores dentro de la funciòn sample
roll <- function() { ##
  die <- 1:6 ## Versiòn
  dice <- sample(die, size = 2, replace = TRUE) ## anterior
  sum(dice) ##
}


roll <- function() { ##
  die <- 1:6 ## Nueva
  dice <- sample(die,
    size = 2, replace = TRUE, ## Version
    prob = c(1 / 8, 1 / 8, 1 / 8, 1 / 8, 1 / 8, 3 / 8)
  ) ## (Pesos
  sum(dice) ## modificados)
} ##


rolls <- replicate(100000, roll())
qplot(rolls, binwidth = 1)
