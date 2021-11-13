# Прочетете данните и ги запишете в data frame в R;

titanic = read.csv("D:/myFMI/3rd year/sem1/SEM/practicum/materials/titanic.csv")
Veiw(titanic)

# Генерирайте си подизвадка от 500 наблюдения. За целта нека f_nr е
# вашият факултетен номер. Задайте състояние на генератора на случайни числа в R чрез set.seed(f_nr). С помощта на подходяща функция генерирайте извадка без връщане на числата от 1 до 891 като
# не забравяте да я запишете във вектор. Използвайте вектора, за да
# зашишете само редовете със съответните индекси в нов дейтафрейм и
# работете с него оттук нататък;

set.seed(62393)
my_sample = sample.int(891,500)
new_titanic = titanic[-c(which(is.na(titanic$Age))),]
View(new_titanic)

# Изкарайте на екрана първите няколко (5-6) наблюдения

head(new_titanic)

# Какъв вид данни (качествени/количествени, непрекъснати/дискретни)
# са записани във всяка от променливите?

# Изведете дескриптивни статистики за всяка една от променливите

# Изведете редовете на най-младия и най-стария пътник;

new_titanic[which.min(new_titanic$Age),]
new_titanic[which.max(new_titanic$Age),]

# Изведете редовете на пътниците с цена на билета над 150

new_titanic[new_titanic$Fare>150,]

# Какъв е броят на мъжете, отпътували от Queenstown или Southampton,
# на възраст между 20 и 40 години?

sum(new_titanic$Sex=='male' & new_titanic$Embarked==c('S','Q') & new_titanic$Age>=20 & new_titanic$Age<=40)

# Направете хистограма на възрастта само на пътниците с поне един
# придружител (брат/сестра/съпруг/съпруга/дете/родител) и нанесете
# графика на плътността върху нея. Симетрично ли са разположени
# данните?

hist(new_titanic[new_titanic$SibSp>=1,]$Age, main="Ages of passengers with at least 1 sibling on board", xlab=c("Age"), probability = TRUE)
lines(density(new_titanic[new_titanic$SibSp>=1,]$Age), lwd=2)
 
# Изследвайте съвместно променливите Fare и Embarked с подходящ
# графичен метод. Какво забелязвате? Сравнете извадковите средни и
# медианите в двете групи и направете извод;

boxplot(new_titanic$Fare~new_titanic$Embarked, xlab="Embarked", ylab="Fare")

# Изследвайте съвместно променливите Survived и Sex с честотна таблица и подходящ графичен метод. Коментирайте резултатите;

barplot(prop.table(table(new_titanic$Survived, new_titanic$Sex)))

# Изследвайте съвместно променливите Age и Fare с подходящ графичен метод. Бихте ли казали, че съществува линейна връзка между тях? Намерете корелацията между величините и коментирайте стойността ѝ

plot(new_titanic$Age, new_titanic$Fare)
abline(lm(new_titanic$Age ~ new_titanic$Fare))
