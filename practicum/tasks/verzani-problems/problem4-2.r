library("MASS")
attach(UScereal)
View(UScereal)


table(UScereal[, c("mfr", "shelf")])['N','3']
prop.table(table(UScereal[, c("mfr", "shelf")]))['K','3']
prop.table(table(UScereal[, c("mfr", "shelf")]), 2)['G', '3']

