
library(FactoMineR)
library(factoextra)
library(psych)

data(iris)
head(iris)

#scale the data
iris_scaled<- scale(iris[,1:4])

#get factor loadings
loadings= fa.loadings(iris_scaled)
print(loadings)

#var of each factor
fa.get_factor_variance()

#get factor scores
factor_scores= fa.transform(data)
print(factor_socres)




#########################


#perform factor analysis
library(psych)
fa<- fa(r=iris_scaled,
        nfactors = 4,
        rotate = "varimax")
summary(fa)

#view the factor loading
fa$loadings

#examine factor structure
subset1<- subset(iris[,1:4],
iris$Sepal.Length< mean(iris$Sepal.Length))

fa1<-fa(subset1, nfactors=4)
print(fa1)


##
data(mtcars)
#fa
factor_analysis<- factanal(mtcars,
                           factors = 3,
                           rotation = "varimax")
print(factor_analysis)









