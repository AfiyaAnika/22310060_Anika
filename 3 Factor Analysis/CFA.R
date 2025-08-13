
library(lavaan)

#load data
data("HolzingerSwineford1939")
head(HolzingerSwineford1939)

#specify the CFA Model
model= '
      visual=~ x1+x2+x3
      textual=~ x4+x5+x6
      speed=~ x7+x8+x9
'

##run and check summary of CFA
cfa_result= cfa(model, data = HolzingerSwineford1939)

#interpre
summary(cfa_result)





