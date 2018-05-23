#Nombre: Marcia Paulina Nesiosup Vilca (20164094B)

#Respuesta 2a:Se crearà una matriz de 4x2 ordenada por filas
m1 <- matrix(c(4.3, 3.1, 8.2, 8.2, 3.2, 0.9, 1.6, 6.5),nrow=4,ncol=2,byrow=TRUE)
m1

#Respuesta 2b: Luego de eliminar una de sus filas se evaluarà sus dimensiones.
m2<-m1[-1,]
m2
dim(m2)

#Respuesta 2c: uso de la funciòn sort para ordenar los elementos de la segunda columna y sobreescribirlos
#en la matriz m1
m1[,2]<-sort(m1[,2])
m1

#Respuesta 2d: Eliminaciòn de la cuarta fila y primera columna
m3<- matrix(m1[-4,-1])
m3

#Respuesta 2e: Almacenamos los cuatro valores inferiores de m1 como una nueva matriz
m4<- matrix(m1[3:4,],nrow=2,ncol=2)
m4

#Respuesta 2f: Sobreescribimos los elementos de (e) en las posiciones ( 4, 2 ) , ( 1, 2 )
#( 4, 1 ) y ( 1, 1 ) con -1/2 de los dos valores en la diagonal de (e).
m1[c(4,1),c(2,1)]<- -1/2*diag(x=m4)
m1

#Respuesta 2g: Verificamos que la operacìon resulta una matriz nula de orden 4
A<- diag(4)
diag(A)<-c(2,3,5,-1)
m5<- solve(A)%*%A - diag(4)
m5




