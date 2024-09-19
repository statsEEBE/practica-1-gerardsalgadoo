#Codigo para problema 2
ls()
rm(list=ls())
data = mtcars
mtcars
hist(data$mpg)

#Si quiero hacer un pie
pie(table(data$cyl))
