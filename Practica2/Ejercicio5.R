# Nombre: Cynthia Calixtro Ames 20150456D
# Respuesta5: El codigo muestra el uso del bucle 'while'

# Item a)
# Creamos la funcion 'mifactorial'
mifactorial <- function(minum){ # Recibe un entero 'minum' no negativo
  fact <- 1 # valor por defecto cuando 'minum' es cero
  while(minum >= 1){ # mientras 'minum' sea mayor o igual a 1
    fact = fact*minum # 'fact' es multiplicado por 'minum'
    minum = minum-1 # decrementamos 'minum' en 1 unidad
  }
  print(fact) # Imprimimos el factorial de 'minum'
}
# Probemos nuestra funcion con los siguientes valores
mifactorial(5) # El resultado es 120
mifactorial(12) # El resultado es 479001600
mifactorial(0) # El resultado es 1

# Item b)
myWhileFunction <- function(unacadena){ # Recibe una cadena de caracteres
  index <- 1 # indice actual
  ecount <- 0 # cantidad de apariciones de la letra 'e', mayuscula o minuscula hasta el indice actual 
  # 'resultado' es la cadena de caracteres completa si no hay una segunda 'e'
  resultado <- unacadena
  # Inspeccionamos el objeto 'unacadena', caracter por caracter, hasta llegar a la
  # segunda instancia de la letra 'e' o al final de la cadena
  while(ecount<2 && index<=nchar(unacadena)){
    current.char <- substr(unacadena,index,index) # caracter actual
    # si el caracter actual es 'e' o 'E', incrementamos en 1 unidad el 'ecount'
    if (current.char == 'e' | current.char == 'E') {ecount = ecount + 1}
    # si hay dos apariciones de la letra 'e' (en minuscula o mayuscula), modificamos el valor de 'resultado'
    # como la cadena de caracteres formada por todos los caracteres sin incluir la segunda 'e'
    if (ecount == 2) {resultado = substr(unacadena,1,index-1)} 
    index <- index+1 # aumentamos 'index' el 1 unidad para analizar el caracter del siguiente indice
  }
  print(resultado) # Imprimimos el resultado 
}
# Probemos nuestra funcion
myWhileFunction("R fever") # El resultado es "R fev"
myWhileFunction("Chapter") # El resultado es "Chapter"
myWhileFunction("elEphant") # El resultado es "el"
