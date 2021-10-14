library(ggplot2)

# load package and datalibrary(ggplot2)data(mpg, package="ggplot2")
mpg <-read.csv("http://goo.gl/uEeRGu")

# Scatterplot
theme_set(theme_bw())  # pre-set the bwtheme.
ggplot(mpg, aes(cty, hwy)) +
  geom_point(col="tomato3")

g <-ggplot(mpg, aes(cty, hwy))
g + geom_count(col="tomato3", show.legend=F)+ 
  labs(title="Counts Plot",subtitle="mpg: city vs highway mileage", y="hwy", x="cty")

g + geom_count(col="tomato3", show.legend=T)+ 
  labs(title="Counts Plot",subtitle="mpg: city vs highway mileage", y="hwy", x="cty") +
  scale_size(range=c(0,5))

#menggunakan proporsi instead of counts
d <- ggplot(diamonds, aes(x = cut, y = clarity))
d + geom_count(aes(size = after_stat(prop)))

d + geom_count(aes(size = after_stat(prop), group = 1)) +
  scale_size_area(max_size = 10)

d + geom_count(aes(size = ..prop.., group = 1)) +
  scale_size_area(max_size = 10)

#specify group dengan variabel x/y
b= d + geom_count(aes(size = after_stat(prop), group = cut)) +
  scale_size_area(max_size = 10)
ggplot_build(b)$data

a= d + geom_count(aes(size = after_stat(prop), group = clarity)) +
  scale_size_area(max_size = 10)
a
ggplot_build(a)$data

#
ggplot(mpg, aes(x=class, y=drv)) + 
  geom_count(aes(size=..prop..), colour="lightgrey") +
  geom_count(aes(size=..prop.., group=class), colour="cornflowerblue")  +
  scale_size(range = c(0,10), breaks=seq(0,1,by=0.2)) +
  coord_fixed(ratio=1) +
  theme_minimal()
