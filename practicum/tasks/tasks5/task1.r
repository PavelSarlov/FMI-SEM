# От данните ’survey’ на пакета ’MASS’ определете средно Xn
# и стандартно отклонение Sn за височината на студентите. Направете
# отделни изчисления за мъжете и за жените.

library('MASS')
attach(survey)
View(survey)

Xn = mean(Height, na.rm=TRUE)
Sn = sd(Height, na.rm=TRUE)

mXn = mean(Height[which(Sex=='Male')], na.rm=TRUE)
mSn = sd(Height[which(Sex=='Male')], na.rm=TRUE)

wXn = mean(Height[which(Sex=='Female')], na.rm=TRUE)
wSn = sd(Height[which(Sex=='Female')], na.rm=TRUE)

# Каква част от студентите
# попадат в интервалите:
# а) (Xn − Sn, Xn + Sn);

sum(Height>(Xn-Sn) & Height<(Xn+Sn), na.rm=TRUE)/length(Height)

# б) (Xn − 2Sn, Xn + 2Sn);

sum(Height>(Xn-2*Sn) & Height<(Xn+2*Sn), na.rm=TRUE)/length(Height)

# в) (Xn − 3Sn, Xn + 3Sn)?

sum(Height>(Xn-3*Sn) & Height<(Xn+3*Sn), na.rm=TRUE)/length(Height)

# Направете хистограма за височината на студентите. Добавете полигона и плътността.

h = hist(Height, probability = TRUE)
lines(c(min(h$breaks),h$mids,max(h$breaks)),c(0,h$counts,0), lwd=2)
rug(Height)
lines(density(Height, na.rm=TRUE), lwd=2)
