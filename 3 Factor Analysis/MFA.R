####################### MFA
library(FactoMineR)
library(factoextra)
data(iris)
head(iris)
group_spec= c(2,2)
#MFA
res_mfa<- MFA(iris_scaled,
              group = group_spec,
              type = c("s","s"),
              name.group = c("sepal","petal"),
              graph= FALSE)
summary(res_mfa)

#visualizing
fviz_mfa_ind(res_mfa,label= "var", habillage = iris$Species,
             addEllipses = TRUE, ellipse.level= 0.95)
###Contributions of Quantitative Variables to dimensions
fviz_contrib(res_mfa,choice = "quanti.var",axes=1)
