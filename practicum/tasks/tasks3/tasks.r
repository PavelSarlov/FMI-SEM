# Разглеждаме данните 'survey' от пакета 'MASS'.

library('MASS')
attach(survey)
View(survey)

# Зад. 1) Въз основа на данните пресметнете вероятностите:
# а) Случайно избран човек да се окаже редовен пушач.

sum(Smoke=='Regul', na.rm=TRUE)/length(Smoke)
prop.table(table(Smoke))['Regul']

# б) Случайно избран човек да се окаже редовно пушещ мъж.

sum(Smoke=='Regul' & Sex=="Male", na.rm = TRUE)/length(Smoke)
prop.table(table(Smoke, Sex))['Regul', 'Male']

# в) Случайно избран мъж да се окаже редовен пушач.

sum(Smoke=='Regul' & Sex=="Male", na.rm = TRUE)/sum(Sex=="Male", na.rm = TRUE)
prop.table(table(Smoke[Sex=='Male']))['Regul']
prop.table(table(Smoke, Sex), 2)['Regul', 'Male']

# г) Случайно избран редовен пушач да се окаже мъж.

sum(Smoke=='Regul' & Sex=="Male", na.rm = TRUE)/sum(Smoke=='Regul', na.rm = TRUE)
prop.table(table(Sex[Smoke=="Regul"]))['Male']
prop.table(table(Smoke, Sex), 1)['Regul', 'Male']

# Зад. 2) Представете графично данните за тютюнопушенето на студентите.
#         А също и за тютюнопушенето в зависимост от пола.

pie(table(Smoke), main="Smokers")
barplot(table(Sex, Smoke), beside=TRUE, col=c("pink","blue"), legend.text = TRUE, main="Smokers by gender")

# Зад. 3) Пресметнете оценки - средно, медиана, квартили, стандартно отклонение и т.н. за височината на студентите.
#         Направете отделни изчисления за мъжете и за жените. Каква част от студентите се различават от средната
#         височина с не повече от едно стандартно отклонение.

mean(Height, na.rm=TRUE)
summary(Height, na.rm=TRUE)
sd(Height, na.rm=TRUE)

# Мъже
mean(Height[Sex=="Male"], na.rm=TRUE)
fivenum(Height[Sex=="Male"], na.rm=TRUE)

# Жени
mean(Height[Sex=="Female"], na.rm=TRUE)
fivenum(Height[Sex=="Female"], na.rm=TRUE)

table(Height, Sex)

sum(abs(Height-mean(Height, na.rm = TRUE))<=1, na.rm = TRUE)/length(Height)


# Зад. 4) Представете графично височината на студентите.

hist(Height, freq = TRUE)
boxplot(Height, horizontal = TRUE)


# Зад. 5) Направете хистограма за пулса на студентите. Добавете плътността.

hist(Pulse, probability = TRUE)
rug(Pulse)
lines(density(Pulse, na.rm = TRUE), lwd=2)


# Зад. 6) Разделете студентите според възрастта им на три групи: A - до 20г, B - от 20 до 25 и C - над 25.
#         Представете графично. Направете таблица за разпределението на пушачите в различните възрасти, представете графично

layout(matrix(c(1,1,1,2,3,4), 2, 3, byrow = TRUE))
hist(Age, breaks=c(0,20,25,max(Age)), xlim=c(0,max(Age))); rug(Age)
barplot(table(Smoke[Age<20]), main="Age < 20")
barplot(table(Smoke[Age<20]), main="Age between 20 and 25 inclusive")
barplot(table(Smoke[Age<20]), main="Age > 20")
