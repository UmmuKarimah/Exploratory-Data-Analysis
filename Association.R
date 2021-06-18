required_packages <- c('MASS', 'rcompanion', 'lsr', 'vcd', 'DescTools')
for (p in required_packages) {
  if(!require(p,character.only = TRUE)) {
    install.packages(p, dep = TRUE)
  }
}

install.packages(rcompanion,repos="https://cran.rstudio.com/bin/windows/contrib/4.0/rcompanion_2.4.0.zip")
input1 = ("
Range    association
<.10    weak
.11-.30    moderate
>.31    strong
")
rot = as.matrix(read.table(textConnection(input1),
                                header=TRUE))
#TABEL KONTINGENSI
library('MASS')
head(Cars93)
sumcar=table(Cars93$Type) #To see how many types of car and how many cars in each type.
prop.table(sumcar) #To see probability in each type
table(Cars93$Type,Cars93$Origin) #example for a contingency table

#try to make another contingency table with different variable#

#CRAMER'S V

library('rcompanion') #rcompanion package
cramerV(Cars93$Type, Cars93$Origin, 
        bias.correct = FALSE,
        conf=0.95,ci=TRUE,histogram=T,
        digits=2)

library('lsr') #lsr package
cramersV(Cars93$Type, Cars93$Origin)

library('vcd') #vcd pckage
assocstats(xtabs(~Cars93$Type + Cars93$Origin)) #assocstats and xtabs contained in the package vcd 
#include coef contingency and phi value

#PHI note! : 2 x 2 only
library(DescTools)
Input =("
Sex      Pass Fail
  Male     49   64
  Female   44   24
")

Matrix.2 = as.matrix(read.table(textConnection(Input),
                                header=TRUE,
                                row.names=1))

barplot(Matrix.2,legend = rownames(Matrix.2)) #try another barplot style

phi(
  Matrix.2
  ,conf=0.95,ci=TRUE,
  histogram=T
    )

library(rcompanion)
cramerV(Matrix.2)

#summary of measure of association
assocstats(Matrix.2)

##ASOSIASI ANTARA VARIABEL KONTINYU##
#scatterplot
plot(Max.Price~Fuel.tank.capacity,data=Cars93)
plot(RPM~EngineSize,data=Cars93)
cor(Cars93$Max.Price, Cars93$Fuel.tank.capacity, method = "pearson") #available method kendall and spearman