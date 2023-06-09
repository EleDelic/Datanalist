#########################################################################
############################ SECCION 5 ##################################
##########################  EJERCICIO 1  ################################
#########################################################################

# �Qu� cantidad de dinero sobra al repartir 10000$ entre 3 personas?

S5E1 <- 10000 %% 3
cat("La cantidad de dinero que sobra es de ", S5E1)

#########################################################################
############################ SECCION 5 ##################################
##########################  EJERCICIO 2  ################################
#########################################################################

#�Es el n�mero 4560 divisible por 3?

S5E2 <- 4560 %% 3 

if(S5E2 == 0){
  cat("4560 SI es divisible por 3")
} else {
  cat("4560 NO es divisible por 3")  
}


#########################################################################
############################ SECCION 5 ##################################
##########################  EJERCICIO 3  ################################
#########################################################################

# Construya un vector con los n�meros enteros del 2 al 87.
# �Cu�les de esos n�meros son divisibles por 7?
# Nota: un vector logico activa un subset del vector

S5E3 <- 2:87
S5E3[S5E3 %% 7 == 0 ] 


#########################################################################
############################ SECCION 5 ##################################
##########################  EJERCICIO 4  ################################
#########################################################################

# Construya dos vectores, el primero con los n�meros enteros desde 7 hasta 3,
# El segundo vector con los primeros cinco n�meros positivos divisibles por 5.
# Sea A la condici�n de ser par en el primer vector.
# Sea B la condici�n de ser mayor que 10 en el segundo vector. 
# �En cu�l de las 5 posiciones se cumple A y B simult�neamente?

S5E4_01 <- 7:3
S5E4_02 <- 5*1:5
S5E4_01 %% 2 == 0 & S5E4_02 > 10 


#########################################################################
############################ SECCION 5 ##################################
##########################  EJERCICIO 5  ################################
#########################################################################

# Encuentra la suma de los primeros 100 numeros positivos

S5E5 <- 1:100
sum(S5E5)

#########################################################################
############################ SECCION 5 ##################################
##########################  EJERCICIO 6  ################################
#########################################################################

# Construya un vector con los siguientes elementos: 1, -4, 5, 9, -4. 
# Escriba un procedimiento para extraer las posiciones
# donde est� el valor m�nimo en el vector.

S5E6 <- c(1,-4,5,9,-4)
aux <- 1:length(S5E6)
cat("los minimos se encuentran en las posiciones \n", aux[S5E6 == min(S5E6)])

#########################################################################
############################ SECCION 5 ##################################
##########################  EJERCICIO 7  ################################
#########################################################################

# Calcular  8!

S5E7<- 1:8
cat("8! es igual a ",prod (S5E7))

#########################################################################
############################ SECCION 5 ##################################
##########################  EJERCICIO 8  ################################
#########################################################################

# Evaluar la siguiente suma  
# Exponencial evaluada de 3 a 7 
S5E8 <- exp(3:7)
sum(S5E8)


#########################################################################
############################ SECCION 5 ##################################
##########################  EJERCICIO 9  ################################
#########################################################################

# Evaluar la siguiente productoria
# Logaritmo de la raiz evaluado de 1 a 10
# El Logaritmo de 1 es 0 por lo que la respuesta ser� 0

S5E9 <- log (sqrt(1:10))
prod (S5E9)


#########################################################################
############################ SECCION 5 ##################################
##########################  EJERCICIO 10 ################################
#########################################################################

#Construya un vector cualquiera e inviertalo
#Que el primer elemento quede de �ltimo, el segundo de pen�ltimo
# y as� sucesivamente. Compare su resultado con el de la funci�n rev


S5E10 <- 1 :10
S5E10_01 <- S5E10 [c(length(S5E10):1)]
S5E10_01 
rev(S5E10)


#########################################################################
############################ SECCION 5 ##################################
##########################  EJERCICIO 11 ################################
#########################################################################
# Create the vector:  1,2,3,.,19,20

S5E11 <- 1:20


#########################################################################
############################ SECCION 5 ##################################
##########################  EJERCICIO 12 ################################
#########################################################################

#Create the vector:  20,19,.,2,1

S5E12 <-rev(S5E11)
S5E12 <- 20:1

#########################################################################
############################ SECCION 5 ##################################
##########################  EJERCICIO 13 ################################
#########################################################################

#Create the vector:  1,???2,3,???4,5,???6,.,19,???20.

S5E13 <- rep(c(1,-1), times=10)
S5E13 <- S5E13 * S5E11

#########################################################################
############################ SECCION 5 ##################################
##########################  EJERCICIO 14 ################################
#########################################################################

#Create the vector:    0.1^3,0.2^1,0.1^6,0.2^4,...,0.1^36,0.2^34


S5E14_01 <- rep(c(0.1, 0.2), times=12)
S5E14_02 <- rep(seq( from=3, to=36, by=3 ), each=2)
S5E14_03 <- rep(c(0,2), times=12)
exponentes<- S5E14_02 - S5E14_03 
S5E14 <- S5E14_01 ^ exponentes

#########################################################################
############################ SECCION 5 ##################################
##########################  EJERCICIO 15 ################################
#########################################################################

# revisar en pagina https://fhernanb.github.io/Manual-de-R/funbas.html#ejercicios-1

#sub ejercicio 1

S5E15_00 <- 10:100
sum (S5E15_00 ^ 3  + 4 * (S5E15_00 ^ 2) )

#sub ejercicio 2

S5E15_01 <- 1 : 25
sum (
  (3 ^ S5E15_01 ) / (S5E15_01 ^ 2) + (2 ^ S5E15_01 ) / S5E15_01 
  )

#########################################################################
############################ SECCION 5 ##################################
##########################  EJERCICIO 16-20 #############################
#########################################################################

# Read the data set available in: https://raw.githubusercontent.com/fhernanb/datos/master/Paises.txt
# Use a code to obtain the number of variables of the data set.
# Use a code to obtain the number of countries in the data set.
# Which is the country with the higher population?
# Which is the country with the lowest literacy rate?
  
data<-read.csv(choose.files())
data <- as.data.frame(data)

# Informaci�n de la base de datos
cat ("La informacion tiene ", dim(data)[1], "renglones y ",dim(data)[2], "columnas\n")

# Pais con mayor poblacion
subset(data, subset = poblacion == max(data$poblacion))

# Pais con menor alfabetizacion
subset(data, subset = alfabetizacion == min(data$alfabetizacion))

###########################################
### Otra manera de leer datos de un link ##
###########################################

url <- 'https://raw.githubusercontent.com/fhernanb/datos/master/Paises.txt'
dt1 <- read.table(url, header=T)
dim(dt1)  # Para conocer la dimensi�n de la base original


#########################################################################
############################ SECCION 5 ##################################
##########################  EJERCICIO 21 ################################
#########################################################################

# �Qu� valor de verdad tiene la siguiente afirmaci�n? 
# "Los resultados de la funci�n floor y trunc son siempre los mismos".

cat("La afirmacion es falsa pues para numeros negativos, por ejemplo
    el -2.1, nos da los resultados para floor y trunc respectivamente ",
    floor(-2.1),"y ", trunc(-2.1))


#########################################################################
############################ SECCION 5 ##################################
##########################  EJERCICIO 22-24 #############################
#########################################################################

# Autos que tengan un rendimiento menor a 18 millas por gal�n de combustible.
# Autos que tengan 4 cilindros.
# Autos que pesen m�s de 2500 libras y tengan transmisi�n manual.

data2<- mtcars
head(data2)

#rendimiento menor a 18 millas per galon
subset(data2,subset = mpg<18, select = c("mpg"))

#Con exactamente 4 cilindros
subset(data2, subset = cyl==4, select = c("cyl"))

#mayores a 2500 libras y manuales
subset(data2, subset = wt>2.5 & am==1, select = c("am","wt"))
