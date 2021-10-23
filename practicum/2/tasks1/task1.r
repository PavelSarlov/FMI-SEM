# Създайте вектор {8, 3, 8, 7, 15, 9, 12, 4, 9, 10, 5, 1}.
data <- c(8, 3, 8, 7, 15, 9, 12, 4, 9, 10, 5, 1); data

# Превърнете вектора в матрица 5x2.
matrix <- matrix(data = data, nrow = 5, ncol = 2); matrix

# Задайте имена на редовете на матрицата - r1, r2 …
rownames(matrix) <- c("r1", "r2", "r3", "r4", "r5"); matrix

# Добавете още една колона съдържаща нечетните числа - 1, 3, 5 …
matrix <- cbind(matrix, c(1, 3, 5, 7, 9)); matrix

# Сортирайте матрицата по първа колона в растящ ред.
matrix[order(matrix[,1]),]