rm(list = ls())

tamanho_dados <- 100

x <- floor(runif(10000, min=1, tamanho_dados+1))
y <- floor(runif(10000, min=1, tamanho_dados+1))

z <- x+y

i <- 0

dados <- 0

for(i in z){

  dados[i] <- length(which(z == i))
  i <- i + 1

}

n <- floor(rnorm(10000, 500, 100))

t <- table(n)

print(dados)

par(mfrow=c(1,2))
barplot(t)
barplot(dados)
