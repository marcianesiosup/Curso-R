#Nombre: Marcia Paulina Nesiosup Vilca(20164094B)

#Respuesta 7a: ALmacenamos el siguiente vector
f1<- c(13563,-14156,-14319,16981,12921,11979,9568,8833,-12968, 8133)

#Mostramos las salidas de f1 que elevados a 75 no resultan infinito.
f1 [is.finite(f1^75)==T]
#Devolvemos los elementos de f1, excluyendo aquellos que resultan en infinito
#negativo cuando se eleva a una potencia de 75.
f1[-which((f1^75)==-Inf)]

#Respuesta 7b:Almacenamos la sgte. matriz como varMatriz
datos <-c(77875.40,-35466.25,-39803.81,27551.45,-73333.85,55976.34,23764.30,
           36599.69,76694.82,-36478.88,-70585.69,47032.00)
varMatriz <- matrix (data=datos,nrow=3,ncol=4) 
#Ìndices correspondientes a los elementos que resultan "NaN" al elevarlos a una potencia
#de 65 y dividirlos entre infinito.
which((varMatriz^65/Inf)=="NaN",arr.ind=T)

#Devolvemos los valores en varMatriz que NO son NaN cuando se eleva varMatriz a una
#potencia de 67 y se añade infinito al resultado.
varMatriz[which((varMatriz^67+Inf)!="NaN",arr.ind=T)]
# Devolvemos los valores uando aumentan a una potencia de 67 y no son iguales
#al infinito negativo.
varMatriz[which(varMatriz^67!=-Inf,arr.ind=T)]
#Comparamos estos dos ùltimos resultados
varMatriz[which((varMatriz^67+Inf)!="NaN",arr.ind=T)]==varMatriz[which(varMatriz^67!=-Inf,arr.ind=T)]

#Identifique los valores en varMatriz que sean infinito negativo o finito 
#cuando eleva varMatriz a una potencia de 67.
varMatriz[which(is.infinite(varMatriz^67)==T)]

#Respuesta 7c:
f2 <- c(4.3,2.2,NULL,2.4,NaN,3.3,3.1,NULL,3.4,NA)

#La longitud de f2 es 8.(Verdadero,solo los "NULL" no se tomaràn en cuenta)
length(f2)==8

#Llamando a which(x=is.na(x=f2)) , no resultará en 4 y 8.(Falso, al no ser tomados en
#cuenta los "NULL", los elementos NaN y NA sì toman los lugares 4 y 8 respectivamente)
which(is.na(f2))

#Verificando is.null(x=f2) , proporciona la localización de dos valores NULL, presentes.
#(Falso, esta funciòn nos indica True si el vector està vacio y False si por lo
#menos existe algun elemento, con ello que nos indicara True)
is.null(f2)




