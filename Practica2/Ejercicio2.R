#Nombre: Marcia Paulina Nesiosup Vilca 20164094B
#Respuesta 2: Identificaremos qué estilo de coincidencia de argumentos se está utilizando: exacto, parcial, posicional o mixto.

args(array)
array(8:1,dim=c(2,2,2)) #se utilizó el estilo mixto (posicional para el primer argumento y exacto para señalar las dimensiones del array "dim")
args(rep)
rep(1:2,3)#Se utilizó el estilo posicional para indicar los datos "x" y el número de veces "times".
args(seq)
seq(from=10,to=8,length=5)#Se utilizó el estilo exacto.
args(sort)
sort(decreasing=T,x=c(2,1,1,2,0.3,3,1.3))#Se utilizó el estilo exacto.
args(which)
which(matrix(c(T,F,T,T),2,2))#Se utilizó el estilo posicional para indicar el primer argumento "x".
which(matrix(c(T,F,T,T),2,2),a=T) #Se utilizó el estilo mixto (posicional para  el primer argumento  "x" y parcial para el segundo "arr.ind")
