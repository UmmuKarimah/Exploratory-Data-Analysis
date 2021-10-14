#basic boxplot
boxplot(mtcars$mpg)

# Boxplot of MPG by Car Cylinders = boxplot with group
boxplot(mtcars$mpg ~ mtcars$cyl)
win.graph()
boxplot(mpg~cyl,data=mtcars, main="Car Milage Data",
   xlab="Number of Cylinders", ylab="Miles Per Gallon")

# Notched Boxplot of Tooth Growth Against 2 Crossed Factors
# boxes colored for ease of interpretation
boxplot(len~supp, data=ToothGrowth,
  col=(c("gold","darkgreen")),
  main="Tooth Growth", xlab="Suppliment and Dose")

boxplot(len~supp*dose, data=ToothGrowth,
  col=(c("gold","darkgreen")),
  main="Tooth Growth", xlab="Suppliment and Dose")

boxplot(len~supp*dose, data=ToothGrowth,
  col=(c("gold","darkgreen")),horizontal=TRUE,
  main="Tooth Growth", xlab="Suppliment and Dose")