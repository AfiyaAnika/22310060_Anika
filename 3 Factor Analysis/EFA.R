
library(psych)
library(factoextra)
library(lavaan)

#load data
data("mtcars")
head(mtcars)

#EDA
sum(is.na(mtcars))
num_cols=ncol(mtcars)
boxplot(mtcars, col = rainbow(num_cols), main = "Mtcars Data with Rainbow Colors")

#determine number of factors
eigenvalues= eigen(cor(mtcars))$values
print(eigenvalues)

#conduct EFA
efa_result=fa(r=mtcars,nfactors=2,rotate="varimax")
print(efa_result)



