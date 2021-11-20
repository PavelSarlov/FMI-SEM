# Разгледайте данните ’Titanic’. Има ли връзка между пола
# и шанса за оцеляване? А между класата и оцеляването? Направете
# подходящи графики.

attach(titanic)
View(titanic)

# Жените и децата първо в спасителните лодки. Можем да видим,
# че мъжете имат сравнително нисък шанс за оцеляване.
prop.table(table(Sex, Survived), margin=1)

# При класовото разделение се вижда, че тези
# от по-горна класа са с приоритет пред другите
prop.table(table(Pclass, Survived), margin=1)

barplot(prop.table(table(Sex, Survived), margin=1), beside = TRUE, legend.text = TRUE)
barplot(prop.table(table(Pclass, Survived), margin=1), beside = TRUE, legend.text = TRUE)