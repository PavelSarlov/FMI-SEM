# Suppose you track your commute times for two weeks (10 days) and you find the following times in minutes
# 17 16 20 24 22 15 21 15 17 22  
# Enter this into R.

commutes = c(17, 16, 20, 24, 22, 15, 21, 15, 17, 22)

# Find your shortest, longest and average commute times.

min(commutes)
max(commutes)
mean(commutes)

# Oops, the 24 was a mistake. It should have been 18. How can you fix this?

commutes[which(commutes == 24)] = 18

# Find the new average.

mean(commutes)

# How many times was your commute 20 minutes or more?

sum(commutes>=20)

# What percent of your commutes take less than 17 minutes?

sum(commutes<17)/length(commutes)*100
