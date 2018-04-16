#Nombre: Marcia Paulina Nesiosup Vilca (20164094B)

#Respuesta 8a:Creamos y almacenamos el siguiente data frame
dframe <- data.frame(persona=c("Stan","Francine","Steve","Roger","Hayley","Klaus"),
                     sexo=factor(c("M","F","M","M","F","M"),levels=c("F","M")),
                     puntuacion=factor(c("Alto","Medio","Bajo","Alto","Medio","Medio"),
                                       levels=c("Alto","Medio","Bajo")))
dframe

#Respuesta 8b:Agregamos la variable edad
dframe$edad=c("41","41","15","1600","21","60")
dframe

#Respuesta 8c: Reordenamos las columnas ajustandolo al data frame "misdatos"
misdatos <- data.frame(persona=c("Peter","Lois","Meg","Chris","Stewie"),
                      edad=c(42,40,17,14,1),sexo= factor(c("M","F","F","M","M")),
                      puntuacion=factor(c("Alto","Alto","Bajo","Medio","Alto")),
                      edad.mon=edad*12)
dframe <- dframe[,c(1,4,2,3)]
dframe

#Respuesta 8d:Eliminamos la variable edad.mon a "mis datos" almacenandolo en misdatos2
misdatos2 <- misdatos[,c("persona","edad","sexo","puntuacion")]
misdatos2

#Respuesta 8e:Combinamos misdatos2 con dframe usando la funcion rbind.
misdatosframe <- rbind(misdatos2,dframe)
misdatosframe


