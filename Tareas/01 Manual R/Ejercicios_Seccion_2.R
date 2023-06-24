#EJERCICIOS SECCION 2

#########################################################################
############################ SECCION 2 ##################################
##########################  EJERCICIO 1  ################################
#########################################################################

# Construya un vector con la primeras 20 letras MAYÚSCULAS 
# usando la función LETTERS
# La diferencia entre Mayusculas y minisculas tambien es la función

E1 <- c( LETTERS[1:20]) 


#########################################################################
############################ SECCION 2 ##################################
##########################  EJERCICIO 2  ################################
#########################################################################

# Construya una matriz de 10 × 10
# Con los primeros 100 números pOsitivos pares
# Nota: un numero multiplica a toda la matrix

E2  <- matrix(data= 2*(1:100), nrow=10,ncol=10)

#########################################################################
############################ SECCION 2 ##################################
##########################  EJERCICIO 3  ################################
#########################################################################

# Construya una matriz identidad de dimension   3 × 3
# Opcion 1, matriz de 0 con un modificador en la diagonal

E3 <-  matrix(data=0, nrow=3,ncol=3)
for (i in 1:3) { 
  E3 [i,i]=1
  } 

# Opcion 2, manera manual
E3 <-  matrix(data=0, nrow=3,ncol=3)
E3[1,1]=1
E3[2,2]=1
E3[3,3]=1

#########################################################################
############################ SECCION 2 ##################################
##########################  EJERCICIO 4  ################################
#########################################################################

#Construya una lista con los anteriores tres objetos creados.

E4<- list(v1=E1,v2=E2,v3=E3)
E4

#########################################################################
############################ SECCION 2 ##################################
##########################  EJERCICIO 5  ################################
#########################################################################

# Construya un data frame con respuestas de 3 personas a las preguntas: 
# (a) ¿Cuál es su edad en años? 
# (b) ¿Tipo de música que más le gusta? 
# (c) ¿Tiene usted pareja sentimental estable?

edad <- c(21,26,28)
music <-c("Rock", "Vals", "Salsa")
pareja <-c("Si","NO","NO")
E5 <- data.frame(edad,music,pareja)

#########################################################################
############################ SECCION 2 ##################################
##########################  EJERCICIO 6  ################################
#########################################################################

# ¿Cuál es el error al correr el siguiente código? ¿A qué se debe?
# edad <- c(15, 19, 13, NA, 20)
# deporte <- c(TRUE, TRUE, NA, FALSE, TRUE)
# comic_fav <- c(NA, 'Superman', 'Batman', NA, 'Batman')
# matrix(edad, deporte, comic_fav)

# Las matrices deben ser de un mismo tipo de variable, en este caso
# tendriamos que tener el conjunto en un data.frame o un lista.
