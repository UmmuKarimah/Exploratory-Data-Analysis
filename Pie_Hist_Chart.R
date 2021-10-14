#Pie Chart
Cities <- c("New York", "Los Angeles", "Chicago", "Houston", "Phoenix", 
            "Philadelphia", "San Antonio", "San Diego", "Dallas", "San Jose")
Population <- c(8.60, 4.06, 2.68, 2.40, 2.71, 1.58, 1.57, 1.45, 1.40, 1.03 )
top_ten <- data.frame(Cities, Population)
top_ten

pie(top_ten$Population)
pie(top_ten$Population, labels = Cities)

top_ten_descend <- top_ten[order(-top_ten$Population), ]
pie(top_ten_descend$Population, 
    labels = Cities, 
    main = "Most Populous US Cities in 2019 (in millions)")

pct <- round(100*top_ten_descend$Population/sum(top_ten_descend$Population))
pie(top_ten_descend$Population,
    labels = paste(top_ten_descend$Cities, sep = " ", pct, "%"), 
    col = rainbow(length(top_ten_descend$Population)), 
    main = "Most Populous US Cities in 2019 (in millions)")

#Histogram
data3=read.table("C:/Users/asus/Documents/ASDOS AED/Data3.txt",header = T, sep="\t")
hist(data3$Length)

hist(data3$Length, 
     main = "Histogram of length", 
     xlab = "length",
     breaks = 5)

hist(data3$Length, 
     main = "Histogram of length", 
     xlab = "length",
     xlim=c(598,600), col = "yellow", border = "blue")

#you can add anything you want
attach(mtcars)
boxplot(mpg~cyl, 
        xlab="Cylinders", ylab="Miles/(US) gallon", 
        col=heat.colors(3)) 
#heat.colors
#terrain.colors
#cm.colors
legend("bottomleft", title="Number of Cylinders",inset = 0.02,
       c("4","6","8"), fill=topo.colors(3), horiz=F,cex=0.8)

data2=read.table("C:/Users/asus/Documents/ASDOS AED/Data2.txt",header = T, sep=",")

barplot(cbind(data2$X2018, data2$X2020) ~ data2$Browser,
        beside = TRUE, #false for stack
        xlab = "Browser",
        col = c("green", "purple")
)
legend("topleft", title="years", fill=c("green", "purple"),inset=0.2,c("2018","2020"))
data()