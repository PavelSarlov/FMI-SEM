# Разгледайте данните survey от пакета MASS.
install.packages("MASS")
library("MASS")

head(survey)
summary(survey)

# Намерeте:
# а) броя на мъжете
sum(survey$Sex == "Male", na.rm = TRUE)

# б) броя на мъжете пушачи;
sum(survey$Sex=='Male' & survey$Smoke!='Never', na.rm=TRUE)

# в) средната височина на мъжете;
mean(survey[survey$Sex=='Male', "Height"], na.rm = TRUE)
mean(survey[survey$Sex == "Male", ]$Height, na.rm = TRUE)

# г) височината и пола на 6-те най-млади студента.
head(survey[order(survey$Age), c('Age', 'Height', 'Sex')])
survey[order(survey$Age)[1:6], c("Age", "Height", "Sex")]