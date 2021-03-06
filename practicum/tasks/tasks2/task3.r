# Пешо решил да продължи сравнението си на дневните цени, при затваряне на пазара, за 1 година добавяйки още акции. Използвайки например пакета rtsdata. Инсталирайте го и го заредете в паметта. Използвайки функцията ds.getSymbol.yahoo('Symbol', from=, to=) свалете данни за още една акция и направете анализите от задача 2 за нея.
install.packages('rtsdata')
library('rtsdata')

AAPL = data.frame(ds.getSymbol.yahoo('AAPL', from="2020-10-15", to=Sys.Date()))
colnames(AAPL) = sub("AAPL.", "", colnames(AAPL))
View(AAPL)

attach(AAPL)
detach(AAPL)

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
AAPL[max(which(rownames(AAPL) <= '2021-02-21')), 'Close']

# Пресметнете как се е изменяла стойността на акциите от ден на ден?
diff(Close)

# Пробвайте да направите някаква графика на данните от горната подточка
plot(diff(Close), type='l')

# През какъв процент от дните цената на акцията е била по-висока при затварянето на пазара спрямо предходния ден?
sum(diff(Close) > 0)/length(Close) * 100

# Намерете стандартното отклонение, дисперсията и интерквартилния размах на възвръщаемостта на акциите?
sd(Close); var(Close); quantile(Close, 0.75) - quantile(Close, 0.25)
