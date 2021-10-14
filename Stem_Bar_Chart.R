#stemplot
data1=read.table("C:/Users/asus/Documents/ASDOS AED/Data1.txt",header = T, sep="\t")
data1=data1[,2]
stem(data1)
stem(data1,scale=2)

#Bar Charts
data2=read.table("C:/Users/asus/Documents/ASDOS AED/Data2.txt",header = T, sep=",")

barplot(data2$Users)

barplot(height=data2$Users, main="2018 Internet Browser Users (in millions)", 
        xlab="Browser", ylab="Users",names.arg = data2$Browser,
        border = "dark blue", col = "yellow", width = 2,horiz = TRUE) ## add horiz = TRUE for horizontal bar graph

barplot(data2$Users, 
        main = "2018 Internet Browser Users (in millions)", 
        xlab = "Users", 
        names.arg = data2$Browser, 
        horiz = TRUE,
        las = 1, # labels
        cex.names = 0.9) #font size


data2_asc <- data2[order(data2$Users),]## add - for desc
barplot(data2_asc$Users, 
        main = "2018 Internet Browser Users (in millions)",
        xlab = "Internet Browser", 
        ylab = "Users", 
        names.arg = data2_asc$Browser)

plot = barplot(cbind(data2$X2018, data2$X2020) ~ data2$Browser,
               beside = TRUE, #false for stack
               xlab = "Browser",
               col = c("green", "purple"),
               legend = c("2018", "2020")
)
