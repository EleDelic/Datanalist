#########################################################################
############################ SECCION 7 ##################################
##########################  EJERCICIO 1  ################################
#########################################################################

# Construya una función que reciba dos números reales a y b, 
# la función debe decir cuál es el mayor de ellos.

#opcion 1
MAYOR <- function (a, b) max(c(a, b))

#OPCION 2
MAYOR <- function(a,b) {
  cat("El mayor de los numeros ", a, " y ", b, "es", max( c(a, b)) )	
}

#########################################################################
############################ SECCION 7 ##################################
##########################  EJERCICIO 2  ################################
#########################################################################

# Escriba una función llamada media que calcule la media muestral de un vector
# numérico x ingresado a la función.

MEDIA <- function(x) {
  resultado <- sum(x)/length(x)
  return(resultado)
}


#########################################################################
############################ SECCION 7 ##################################
##########################  EJERCICIO 3  ################################
#########################################################################


# Construya una función que encuentre las raíces 
# de una ecuación de segundo grado. 
# El usuario debe suministrar los coeficientes a, b y c de la ecuación  

CUADRATICAS <- function(a,b,c){
  d <- b*b -4*a*c
  if (d < 0) { 
    cat ("La expresion no tiene raices enteras")
  } else {
    aux <- c(-1*b/2, (d^0.5)/2)
    respuesta <- c(sum(aux * c(1, 1)),sum(aux * c(1,-1)))
    cat ("Las raices reales de la expresion son x1= ", respuesta[1], "y x2= ", respuesta[2])
  }
}

#########################################################################
############################ SECCION 7 ##################################
##########################  EJERCICIO 4  ################################
#########################################################################

# Escribir una función que calcule la velocidad de un proyectil dado 
# que el usuario ingresa la distancia recorrida en Km y 
# el tiempo necesario en minutos. 
# Expresar el resultado se debe entregar en metros/segundo


VELOCIDAD <- function(km,min){
  velocidad <- (km*1000) / (min * 60)
  return (velocidad)
}

#########################################################################
############################ SECCION 7 ##################################
##########################  EJERCICIO 5  ################################
#########################################################################

# Escribir una función que reciba dos valores  
# a y b y que los intercambie. Es decir, si ingresa  
# a=  4 y b = 9 que la función entregue  
# a=  9 y b = 4
# nota: investigar la asignacion de valores dentro de una funcion

CAMBIO <- function (a,b){
  return(c(b,a))
}

#########################################################################
############################ SECCION 7 ##################################
##########################  EJERCICIO 6  ################################
#########################################################################

# Construya una función a la cual le ingrese el salario por hora
# y el número de horas trabajadas durante una semana por un trabajador.
# La función debe calcular el salario neto.

SALARIO <- function (valor.hora,horas){
  return(sum(horas*valor.hora))
} 

#########################################################################
############################ SECCION 7 ##################################
##########################  EJERCICIO 7  ################################
#########################################################################

# Construya una función llamada precio que calcule el precio total
# de sacar A fotocopias y B impresiones, sabiendo que los precios son
# 50 y 100 pesos para A y B respectivamente si el cliente es un estudiante,
# y de 75 y 150 para A y B si el cliente es un profesor. 
# La función debe tener dos argumentos cuantitativos (A y B)
# y el argumento lógico estudiante que por defecto tenga el valor de TRUE.

precio <- function(A,B,estudiante=TRUE) {
  ifelse( estudiante, precio.total <- 50*A + 100*B, precio.total <- 75*A + 150*B)
  return (precio.total)
}


#########################################################################
############################ SECCION 7 ##################################
##########################  EJERCICIO 8  ################################
#########################################################################


# Construya una función llamada salario que le ingrese el salario por hora
# y el número de horas trabajadas durante una semana por un trabajador.
# La función debe calcular el salario neto semanal, 
# teniendo en cuenta que si el número de horas trabajadas durante la semana
# es mayor de 48, esas horas de demás se consideran horas extras y 
# tienen un 35% de recargo. Imprima el salario neto.

SALARIO <-function(num.horas, valor.hora){
  ifelse(
    sum(num.horas)>48, 
    salario.neto <- 48*valor.hora + (sum(num.horas)-48)*valor.hora*1.35, 
    salario.neto <- valor.hora*sum(num.horas)
    ) 
  return( salario.neto)
}


#########################################################################
############################ SECCION 7 ##################################
##########################  EJERCICIO 9  ################################
#########################################################################

# Construya una función llamada nota que calcule 
# la nota obtenida por un alumno en una evaluación de tres puntos 
# cuya ponderación o importancia son 20%, 30% y 50% 
# para los puntos I, II y III respectivamente. 
# Adicionalmente la función debe generar un mensaje 
# sobre si el estudiante aprobó la evaluación o no. 
# El usuario debe ingresar las notas individuales de los tres puntos 
# y la función debe entregar la nota final de la evaluación.

NOTA <- function(p1,p2,p3) {
  cal <- p1*.20 + p2*.30 + p3*.50
  ifelse(
    cal<6, 
    sprintf("La calificacion final %s no es aprobatoria ", cal), 
    sprintf("La calificacion final %s es aprobatoria", cal)
    )
}

#########################################################################
############################ SECCION 7 ##################################
##########################  EJERCICIO 10 ################################
#########################################################################

# Escriba una función llamada minimo que permita obtener el valor mínimo 
# de un vector numérico. No puede usar ninguna de las funciones básicas 
# de R como which.min(), which.max(), order(), min( ), 
# max( ), sort( ) u order( ). 

minimo <- function(x) {
  i <- 1
  repeat{
    minimo <- x[i] 
    aux <- x[ x >= x[i]]
    if (length(aux) == length(x) | length(x) == i ) break 
    i <- i+1
    }	 
  return (minimo)
}


#########################################################################
############################ SECCION 7 ##################################
##########################  EJERCICIO 11 ################################
#########################################################################

# Construya una función que calcule las coordenadas del punto medio  
# M entre dos puntos  A y B .
# ¿Cuáles cree usted que deben ser los parámetros de entrada de la función?

PM <- function(x,y) {
  resultado <- c((x[1]+y[1])/2 ,(x[2]+y[2])/2 )
  cat("El punto medio esta en x=", resultado[1], " y= ", resultado[2],"\n")
  return(resultado)
}