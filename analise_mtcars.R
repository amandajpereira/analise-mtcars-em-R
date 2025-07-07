# Projeto: Análise simples com R
# Dataset: mtcars

# 1. Carregar dados
data("mtcars")
head(mtcars)

# 2. Resumo estatístico
summary(mtcars)

# 3. Média de consumo (mpg)
media_mpg <- mean(mtcars$mpg)
cat("Média de milhas por galão (mpg):", media_mpg, "\n")

# 4. Gráfico: Relação entre peso e consumo
dir.create("img", showWarnings = FALSE)  # Cria pasta img se não existir
png("img/grafico.png", width = 600, height = 400)
plot(mtcars$wt, mtcars$mpg,
     main = "Peso vs Consumo",
     xlab = "Peso do carro (1000 lbs)",
     ylab = "Milhas por galão (mpg)",
     pch = 19, col = "blue")
dev.off()
