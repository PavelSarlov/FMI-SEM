# Your cell phone bill varies from month to month. Suppose your year has the following monthly amounts
# 46 33 39 37 46 30 48 32 49 35 30 48 
# Enter this data into a variable called bill.

bill = c(46, 33, 39, 37, 46, 30, 48, 32, 49, 35, 30, 48)

# Find how much you spent on cell phone this year.

sum(bill)

# What is the smallest amount you spent in a month?
# What is the largest one?

min(bill)
max(bill)

# How many months was the amount greater than $40?

sum(bill>40)

# What percentage of the months was this?

sum(bill>40)/length(bill)*100
