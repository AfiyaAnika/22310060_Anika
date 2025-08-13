
#read data
setwd("D:/Courses of Siddik sir/5101/lab")
protein_data<- read.csv("protein.csv")
str(protein_data)

#check null values
colSums(is.na(protein_data))

#normalizing
numerical_data<- protein_data[,2:10]
head(numerical_data)
data_normalized<- scale(numerical_data)
head(data_normalized)

#pca
data.pca<- princomp(data_normalized)
summary(data.pca)

data.pca$loadings[,1:2]

#visualization
library(corrr)
library(FactoMineR)
library(factoextra)
library(corrplot)
fviz_eig(data.pca,addlabels=TRUE)

#biplot
fviz_pca_var(data.pca,col.var = "black")

#contribution of each variable(cos2)

fviz_cos2(data.pca,choice = "var",axes = 1:2)

#biplot combined with cos2
fviz_pca_var(data.pca,col.var = "cos2", gradient.cols= c("black",
              "orange","green"),repel = TRUE)
