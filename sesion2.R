#borrar objetos del environment
rm(list = ls())

promedio <- function(calificacion){
  sum(calificacion)/length(calificacion)
}

promedio(c(3,4,5,6,7,8,9,10))

argumentos <- function(num, def =2){
  num%%def
}

argumentos (7,4)

args(argumentos)

telegrama <- function(val1,val2){
  paste("START ",val1, " ", val2, " STOP")
}

telegrama("hola","linda")


cambiante<- function(...){
  recibe <- list(...)
  place <- recibe[["lugar"]]
  adjective <- recibe[["adjetivo"]]
  noun <- recibe [["sustan"]]
  paste("Hola desde", place, "Les saluda", adjective, "para que tengas un", noun)
}

cambiante(lugar="Rusia", adjetivo="feliz",sustan="helado")

"%binario%" <- function(izquierda,derecha){
  izquierda * derecha +1
}

4 %binario% 5


"%p%" <- function(izquierdo,derecho){
  paste (izquierdo,derecho)
}

"Buen" %p% "trabajo!"


#matriz en trabajo
matriz <-data.frame(
  x<-c(1,2,NA,4),
  y<-c(2,3,4,5),
  z<-c(2,3,4,NA),
  w<-c(3,4,6,7)
)

#busco que filas tienen NA que da False en la funcion complete
filados <- complete.cases(matriz)
sum(filados)

#primer valor es filas, 2do es columnas
dim(matriz)
