# Разгледайте данните ’anscombe’. За всяка двойка (xi, yi), i=1...4
# пресметнете числовите характеристики, представете графично, отстранете ’outlier’

library("MASS")
attach(anscombe)
View(anscombe)
head(anscombe)

for (i in 1:4) {
  x = paste("x",i,sep="")
  y = paste("y",i,sep="")
  z = paste("z",i,sep="")
  assign(z, data.frame(x=get(x),y=get(y)))
}

# ...