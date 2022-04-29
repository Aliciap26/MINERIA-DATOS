## Howard Herrera Erwin, #18210716
## Pérez López Alicia Guadalupe, #18210514


#funcion de suma creada 
#1
Suma_x <- function(Num, x){
  resultado <- Num + x
  return(resultado)
   
}
Suma_x(Num = 6 , x = 45)
#funcion 2
f <- function(variable) {
  length(unique(variable))
}
sapply(mtcars, f)
#funcion 3 para la aproximacion de una integral con indice superior 0 e inferior 5
f <- function(x) {
  2*x^2 + 7
}
integrate(f, 0, 5)
#Funcion 4 de suma
sum(1, c(3, 8))

suma <- function(...) {
  l <- list(...)
  s <- 0
  for (x in l) {
    s <- s + x
  }
  return(s)
}
#Funcion 5 de suma 
suma(1, 2, 3)
#Funcion 6 para indicar la distancia entre dos puntos (con parametros)
distancia_eu <- function(x1, y1, x2, y2) {
  sqrt((x1 - x2)^2 + (y1 - y2)^2)
}
distancia_eu(1, 1, 2, 2)
# funcion 7 con para potencia al cuadrado.
f <- function(x) {
  x^2
}
f(8)
# funcion 8 con potencia al 5ta
f <- function(x) {
  x^5
}
f(8)
#Funcion 9 para crear lista y operaciones basicas suma y resta
operaciones <- list(s = suma, r = resta)
# funcion 10 resta
resta  <- function(a, b) a - b
operaciones[[1]](2, 4)
operaciones[[2]](2, 4)
# Funcion 11 con return que devuelve valor maximo 
maximo <- function(a, b) {
  if (a > b) {
    m <- a
  } else {
    m <- b
  }
  return(m)
}
maximo(16, 22)
# funcion 12 suma con variables globales
w <- 10
f <- function(x) {
  x + w
}
f(4)
# funcion 13 que da el rango entre 2 numeros dados
rango <- function(v) {
  c(min(v), max(v))
}
(v <- sample(60, 14))
#funcion 14 uso de if 
dividendo <- 17
divisor <- 0
if (divisor != 0) {
  cat(dividendo, "/", divisor, "=", dividendo / divisor, "\n")
} else {
  print("No es posible dividir entre 0")
}

# Funcion 15 sentencia if anidadas, hace recorrido e indica numero mayor 
x <- 7; y <- 8; z <- 16
if (x > y) {
  if (x > z) {
    mayor <- x
  } else {
    mayor <- z
  }
} else {
  if (y > z) {
    mayor <- y
  } else {
    mayor <- z
  }
}
mayor
# funcion 16 matriz
n <- 5
notas <- array(runif(n*3*2, max = 10), dim = c(n, 3, 2))
notas
# Cadena de caracteres entre comillas 
"Hola"

# funcion 17 para sacar el area de un cuadrado
area_cuad <- function(lado1, lado2) {
  lado1 * lado2
}area_cuad(lado1 = 2, lado2 = 3)

area_cuad(3,3)
# funcion 18 suma un número variable de escalares
suma <- function(...) {
  l <- list(...)
  s <- 0
  for (x in l) {
    s <- s + x
  }
  return(s)
}
suma(1, 2)

#funcion 19 sumas con variables locales

v <- 5
s <- 1
suma <- function(v) {
  s <- 0
  for (x in v) {
    s <- s + x
  }
  s
}
suma(c(2, 2, -3))



# funcion 20 Lista multidimencional 

l <- list(1:3, "x", TRUE, 2.0)
dim(l) <-  c(2, 2)
l


#funcion 21 Crear lista de alumno

fecha <- list(dia = 26, mes = "Enero", año = 2002)
alumno <- list(nombre = "Alicia", nacimiento = fecha)
str(alumno)

#funcion 22las funciones sirven para realizar cálculos. 
#Una función es invocada facilitándole unos argumentos.
#En función de los argumentos realiza sus cálculos y devuelve un resultado. 
cos(pi / 2)



#### Funcion ejemplo El punto médio entre dos valores es la suma de los números divido entre dos. 
#La función cat sirve para concatenar objetos y presentarlos por pantalla.
medio <- function(a, b) {
  medio <- (a + b) / 2
  cat("El punto medio de los valores", a, "y", b,
      "ingresados es", medio)
}

medio(a=-3, b=-1)
