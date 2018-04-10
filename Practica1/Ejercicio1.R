#Nombre:Marcia Paulina Nesiosup Vilca
#Respuesta 1.a Se crea una sequencia del 5 al -11 que progresa en pasos de 0.3
x=seq(5,-11,by=-0.3)
x

#Respuesta 1.b Se invierte el orden la secuencia creada en 1.a
y=sort(x,decreasing=FALSE)
y

#Respuesta 1.c 
#Creamos el vector z
z=rep(c(-1,3,-5,7,-9),times=2,each=10)
#Ordenamos z de mayor a menor
sort(z,decreasing=TRUE)

#Respuesta 1.d
#Creamos el vector m
m=c(6:12,rep(5.3,3),-3,seq(102,length(z),length.out=9))
m
#Verificamos que su longitud sea igual a 20
length(m)