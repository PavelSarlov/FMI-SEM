# Suppose you keep track of your mileage each time you fill up. At your last 6 fill-ups the mileage was
# 65311 65624 65908 66219 66499 66821 67145 67447
# Enter these numbers into R. Use the function diff on the data. What does it give?

miles = c(65311, 65624, 65908, 66219, 66499, 66821, 67145, 67447)
d = diff(miles)

# The last function shows the number of miles between fill-ups.
# Find the minimum, maximum and average number of miles between fill-ups.

min(d)
max(d)
mean(d)

