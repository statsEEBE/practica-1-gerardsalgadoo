#Codigo para problema 1
mis_dades <- mtcars
mis_dades

#Si vull extreure qsec utilitzo "$"
#Vull saber la MITJANA de qsec
mis_dades$qsec

#Per ordenar utilitzo sort
sort(mis_dades$qsec)

#Ara m'interessa fer una taula de frecuències
#Puc fer intervals amb les meves dades
cut(mis_dades$qsec, breaks = 4)

#Crido una nova variable per poder fer intervals
qsec_intervalos <- cut(mis_dades$qsec, breaks = 4)
qsec_intervalos
table(qsec_intervalos)
hist(mis_dades$qsec, breaks = 4)
hist(mis_dades$qsec, breaks = 10)

#El promig/mitjana és el centre de gravetat de les dades. (x amb barra a sobre)
#Es calcula amb el "mean"
mean(mis_dades$qsec)

#Ara vull saber la MEDIANA de drat
#Ordeno de menor a major
sort(mis_dades$drat)

#Utilitzo la funció "median"
median(mis_dades$drat)

#Ara em demanen el PRIMER QUARTIL de drat
#Utilitzo la funció "quantile"
quantile(mis_dades$drat, 0.25) #Agafo 3.080, perquè és el primer quart.

#Ara vull saber el VALOR PERCENTIL en que el 18% de les obs. de MPG són més petites i el 
#82% són majors.
#Tallo al 18%
quantile(mis_dades$mpg, 0.18)

#Freq. acumuluda absoluta i freq. relativa absoluta
ni <- table(qsec_intervalos)
ni
sum(ni)
fi <- ni/sum(ni)
fi
#Per dibuixar_ho
pie(fi)

#Per fer una TAULA DE FRECUÈNCIES
ni <- table(mis_dades$qsec)
fi <- ni/sum(ni)
Ni <- cumsum(ni)
Fi <- cumsum(fi)
cbind(ni, fi, Ni, Fi)

#Em demanen el RANG INTERQUARTÍLIC de cyl, es pot fer de dues maneres
quantile(mis_dades$cyl, 0.75)-quantile(mis_dades$cyl, 0.25)
IQR(mis_dades$cyl)
boxplot(mis_dades$cyl)

#La variància mostral és la "s^2" i la desviació tipica és "s"
#La DESVIACIÓ TÍPICA (CORREGIDA) de cyl
sd(mis_dades$cyl)
#Ara em demanen la VARIÀNÇA de qsec
var(mis_dades$qsec)
