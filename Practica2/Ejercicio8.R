#Nombre: Marcia Paulina Nesiosup Vilca 20164094B
#Respuesta 8:Crearemos la función "inversa" que nos permitirá invertir las matrices que conforman una lista 

inversa<- function(x,noninv=NA, nonmat="no es una matriz!",silent=TRUE){
  if(is.list(x)==F){
    return(paste("",x,"no es una lista.",sep = " "))
  }
  if(length(x)==0){
    return(paste("la lista no posee elementos.",sep = " "))
  }
  if(is.character(nonmat)==F){
    nonmat=as.character(nonmat)
  }
  for (i in (1:length(x))){
    if (is.matrix(x[[i]])==T){
      x[[i]]=try(solve(x[[i]]),silent,getOption("try.outFile", default = stderr()))
      if(is.matrix(x[[i]])==FALSE){
        x[[i]]=noninv
      }
      
    }
    else{
      x[[i]]=nonmat
    }
  }
  return(x)
}

x1<-list(1:4,matrix(1:4,1,4),matrix(1:4,4,1),matrix(1:4,2,2))
x2<-list(diag(9),matrix(c(0.2,0.4,0.2,0.1,0.1,0.2),3,3),rbind(c(5,5,1,2),c(2,2,1,8),c(6,1,5,5),c(1,0,2,0)), matrix(1:6,2,3),cbind(c(3,5),c(6,5)),as.vector(diag(2)))
#Realizaremos las siguientes pruebas
inversa(x1)
inversa(x1,Inf,666)
inversa(x1,Inf,666,FALSE)
inversa(x2,"matriz inadecuada")
inversa("hola")
inversa(list())


