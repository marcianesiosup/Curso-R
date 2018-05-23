#Nombre: Marcia Paulina Nesiosup Vilca (20164094B)
#Respuesta 4a: Usamos la funciòn class para obtener la clase de los siguientes objetos

f1 <- array(data=1:36,dim=c(3,3,4))
class(f1) 
oldClass(f1)
#La clase del objeto f1 es "array" sin embargo con la función oldClass obtenemos que no posee atributos de clase por lo cuál
#su clase está implícitamente definida.
bar <- as.vector(f1)
class(bar)
oldClass(bar)
#La clase del objeto bar es "integer" sin embargo con la función oldClass obtenemos que no posee atributos de clase por lo cuál
#su clase está implícitamente definida.
baz <- as.character(bar)
class(baz)
oldClass(baz)
#La clase del objeto baz es "character" sin embargo con la función oldClass obtenemos que no posee atributos de clase por lo cuál
#su clase está implícitamente definida.
qux <- as.factor(baz)
class(qux)
oldClass(qux)
#La clase del objeto qux es "factor" y con la función oldClass obtenemos que posee atributos de clase ("factor") por lo cuál
#su clase está explícitamente definida.
quux <- bar+c(-0.1,0.1)
class(quux)
oldClass(quux)
#La clase del objeto quux es "numeric" sin embargo con la función oldClass obtenemos que no posee atributos de clase por lo cuál
#su clase está implícitamente definida.

#Respuesta 4b: Para cada objeto definido en (a), encontramos la suma del resultado 
#de la llamada de is.numeric y is.integer por separado.
vc<- c()
vc[1]=sum(is.numeric(f1),is.integer(f1))
vc[2]=sum(is.numeric(bar),is.integer(bar))
vc[3]=sum(is.numeric(baz),is.integer(baz))
vc[4]=sum(is.numeric(qux),is.integer(qux))
vc[5]=sum(is.numeric(quux),is.integer(quux))

#Convertimos la colecciòn de resultados en un factor y lo coercemos en un vector
#numèrico con la funciòn as.numeric
col <- factor(x=vc,levels=c("0","1","2"),ordered=TRUE)
col
#La representaciòn numèrica del factor "col" es:
as.numeric(col)

#Respuesta 4c: Uso de las funciones as.data.frame as.logical y as.factor para coercer la
#matriz almacenada.
mat <- matrix(c(34,23,33,42,41,0,1,1,0,0,1,2,2,1,2),nrow=5,ncol=3)
mat
dfmat <- as.data.frame(mat)
dfmat
logmat <- as.logical(dfmat[,2])
logmat
facmat <- as.factor(dfmat[,3])
facmat




