# Nombre: Cynthia Calixtro Ames 20150456D
# Respuesta4: El codigo muestra el uso de los bucles 'for'

# Creando dos vectores
loopvec1 <- 5:7
loopvec2 <- 9:6
# Creando una matriz cuyos elementos son NA y el numero de filas y columnas
# esta dado por la longitud de los vectores 'loopvec1' y 'loopvec2', respectivamente
mat1 <- matrix(NA,length(loopvec1),length(loopvec2))
mat1 # Imprimimos la matriz
# Completamos la matriz con el resultado de multiplicar cada entero en 'loopvec1'
# por cada entero en 'loopvec2'
for(i in 1:length(loopvec1)){
  for(j in 1:length(loopvec2)){
    # asignamos el valor del producto del i-esimo elemento de 'loopvec1' con el
    # elemento j-esimo de 'loopvec2' al elemento a_ij de la matriz
    mat1[i,j] <- loopvec1[i]*loopvec2[j]
  }
}
mat1 # Imprimimos la matriz resultante

# Item a)
# Reescribimos el codigo anterior utilizando un solo bucle 'for'
for(i in 1:length(loopvec1)){
  # asignamos el vector resultante de multiplicar el i-esimo elemento de 'loopvec1'
  # con 'loopvec2' a la i-esima fila de la matriz
  mat1[i,] <- loopvec1[i]*loopvec2
}
mat1 # Imprimimos la matriz resultante

# Item b)
# Vector de prueba
vec.test <- c("Peter","Homer","Lois","Stewie","Maggie","Bart")
# creamos el vector resultante inicialmente vacio
res <- c()
for (i in vec.test){ 
  # para cada valor de 'vec.test', adjuntamos al vector 'res' el
  # resultado de 'switch'. Donde 'switch' devuelve un numero basado
  # en el valor de 'EXPR'
  res <- c(res,switch(EXPR=i,Homer=12,Marge=34,Bart=56,Lisa=78,Maggie=90, NA))
}
res # imprimimos el vector resultante

# Item c)
# Creamos la funcion 'mycounter'
mycounter <- function(unalista){ # Recibe una lista
  count <- 0 # inicializamos en 0 al contador
  for (i in 1:length(unalista)){ # barremos todos los elementos de la 'unalista'
    miembro <- unalista[[i]] # i-esimo mienbro de la lista
    if (is.matrix(miembro)){ # si este miembro es una matriz
      count = count +1 # aumentamos el contador en 1 unidad
    }else if (is.list(miembro)){ # si este miembro es otra lista
        for (j in 1:length(miembro)){ # barremos todos los elementos de esta lista miembro
          if (is.matrix(miembro[[j]])){ # si es elmiembro de esta otra lista es una matriz
            count = count +1 # aumentamos el contador en 1 unidad
          }
        }
     }
  }
  print(count)
}
# Probemos nuestra funcion con las siguientes listas
# Lista 'unalista1'
unalista1 <- list(aa=c(3.4,1),bb=matrix(1:4,2,2),
                 cc=matrix(c(T,T,F,T,F,F),3,2),dd="cadena aqui",
                 ee=list(c("hola","tu"),matrix(c("hola","there"))),
                 ff=matrix(c("red","green","blue","yellow")))
# Despues de aplicar la funcion a 'unalista1'
mycounter(unalista1) # La respuesta es 4
# Lista 'unalista2'
unalista2 <- list("salio algo raro",as.vector(matrix(1:6,3,2)))
# Despues de aplicar la funcion a 'unalista2'
mycounter(unalista2) # La respuesta es 0
# Lista 'unalista3'
unalista3 <- list(list(1,2,3),list(c(3,2),2),list(c(1,2),matrix(c(1,2))),
                rbind(1:10,100:91))
# Despues de aplicar la funcion a 'unalista3'
mycounter(unalista3) # La respuesta es 2

