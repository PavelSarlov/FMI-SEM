# Свалете данните за 2те акции
# Заредете данните в R
NVDA <- read.csv("~/stuff/fmi/FMI-SEM/practicum/2/materials/NVDA.csv", row.names=1)
GOOG <- read.csv("~/stuff/fmi/FMI-SEM/practicum/2/materials/GOOG.csv", row.names=1)

View(NVDA)
View(GOOG)

attach(NVDA)
attach(GOOG)

detach(NVDA)
detach(GOOG)

# Пробвайте да направите някаква графика на данните
plot(Close)

# Какъв е обхватът в който са се изменяли цените на акциите през годината?
max(Close)-min(Close); # diff(range(Close))

# Колко са били медианата, долния и горния хиндж на акциите през годината?
median(Close); fivenum(Close)

# Каква е била средната цена на акциите през годината?
mean(Close)

# Колко е бил 1вия и 3тия квартил на данните ви?
quantile(Close, 0.25); quantile(Close, 0.75) # summary(Close)

# Каква е била стойността на акцията на рождения ви ден (ако пазара е бил затворен тогава, каква е била стойността през последния ден преди това, когато пазара е бил отворен)? Сравнете стойността с изброените горе статистики? По-ниска или по-висока е била цената на акцията на рождения ви ден спрямо средната цена за годината?
NVDA[max(which(rownames(NVDA) <= '2021-02-21')), 'Close']

# Пресметнете как се е изменяла стойността на акциите от ден на ден?
diff(Close)

# Пробвайте да направите някаква графика на данните от горната подточка
plot(diff(Close), type='l')

# През какъв процент от дните цената на акцията е била по-висока при затварянето на пазара спрямо предходния ден?
sum(diff(Close) > 0)/length(Close) * 100

# Намерете стандартното отклонение, дисперсията и интерквартилния размах на възвръщаемостта на акциите?
sd(Close); var(Close); quantile(Close, 0.75) - quantile(Close, 0.25)
