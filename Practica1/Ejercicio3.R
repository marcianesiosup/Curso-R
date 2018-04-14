#Marcia Paulina Nesiosup Vilca (20164094B)
#Respuesta 3a:Creamos dos vectores de caracteres de longitud 20 segùn los datos del problema

sexo <- c("M","H","H","H","M","M","M","H","H","H","H","M","H","M","M","M","H","H","H","H")

partido <- c("Laboral","Nacional","Nacional","Laboral","Nacional","Verdes",
             "Nacional","Nacional","Verdes","Otro","Verdes","Laboral","Nacional","Nacional",
             "Laboral","Laboral","Nacional","Nacional","Laboral","Otro")

#Respuesta 3b: A partir de los vectores en "a" se crearàn dos factores
sexo.fac <- factor(x=sexo)
partido.fac <-factor(x=partido,levels=c("Nacional","Laboral","Verdes","Maori","Otro"))
#Puesto que los niveles del factor partido.fac no presentan un orden predeterminado, no es
#necesario utilizar "ordered=TRUE", de modo que R organizarà los niveles alfabèticamente

#Respuesta 3c:
#Devolvemos el factor de los partidos elegidos solo por participantes hombres.
factor(partido.fac[sexo.fac=="H"])
#Devolvemos el factor de géneros para quienes eligen al partido Nacional .
factor(sexo.fac[partido.fac=="Nacional"])

#Respuesta 3d: Combinamos los nuevo factores con los originales en b
np.fac <- factor(x=c("Nacional", "Maori", "Maori", "Laboral", "Verdes", "Laboral"),levels=levels(partido.fac))
ns.fac <- factor(x=c("H", "H" , "M", "M", "M", "H"),levels=levels(sexo.fac))

nsexo.fac <- factor(x=levels (sexo.fac)[c(sexo.fac,ns.fac)],levels=levels(sexo.fac))
nsexo.fac
npartido.fac <- factor(x=levels(partido.fac)[c(partido.fac,np.fac)],levels(partido.fac))
npartido.fac
#Se tienen las siguientes puntuaciones dadas por las 26 personas
#Se agregò el dato nº 26 pues no se encontraba especificado(50)
puntuaciones <- c(93, 55, 29, 100, 52, 84, 56, 0, 33, 52, 35, 53, 55, 46, 40, 56, 45, 64, 31, 10, 29, 40, 95, 
                  18, 61,50)
intervalos <- c(0,30,70,100)
lab <- c("bajo","medio","alto")

#Creamos un factor con valores de confianza
confianza.fac <-cut(x=puntuaciones,breaks=intervalos,right=F,include.lowest=T,
                    labels=lab)
confianza.fac

#Valores de confianza de individuos que se identifican con Laboralistas
laboral <- npartido.fac=="Laboral"
confianza.fac [which(laboral==T)]

#Valores de confianza de individuos que se identifican con Nacionalistas
nacional <- npartido.fac=="Nacional"
confianza.fac [which(nacional==T)]


#Los partidos Nacionalista y Laboralista son los que poseen mayor identificaciòn
#por parte de los encuestados. Los que se identifican con los Laboralistas le otorgàn
#mayores valores de confianza a que este partido obtenga una mayor cantidad de escaños
#en el parlamento caso contrario obviamente con los que se identifican con los
#Nacionalistas.

