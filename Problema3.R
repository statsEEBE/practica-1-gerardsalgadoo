#Codigo para problema 3
x <- c(-5,5,2,-8,9,5,2,-3,1,-1,4,-4,9,3,-9,7,0,-7,8,-4,1,7,-6,4,5,-9,-2,-8,5,-5)
x

#Suma los datos
sum(x)

#Crea un vector Y a partir del vector X eliminant les dades emmagatzemades a les
#posicions 21,2,26
x
y <- x[-c(21,2,26)]
y

#Suma exponencial
sum(exp(x))-sum(exp(y))

# Quin es mes gran?
y[19]
y[24]
