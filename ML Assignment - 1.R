#Call data file
mydata <- read.csv(file.choose())
mydata

#Statistics for the quantitative and categorical variables
colnames(mydata)

head(mydata, n=10)
tail(mydata)
nrow(mydata)
ncol(mydata)
summary(mydata)
str(mydata)

#Transformation of the Industry Variable
mydata$Industry <- factor(mydata$Industry)
levels(mydata$Industry)
is.factor(mydata$Industry)

install.packages("ggplot2")
library("ggplot2")
install.packages("esquisse")
library("esquisse")
esquisser()

colnames(mydata)

#Graph of quantitative variable
ggplot(mydata) +
  aes(x = Industry, fill = Industry) +
  geom_bar() +
  scale_fill_hue(direction = 1) +
  coord_flip() +
  theme_minimal()

install.packages('ISLR')
library("ISLR")

#Use of new data for scatter plot as my data set was too large to implement.

plot(x=Carseats$Sales, y=Carseats$Price, xlab="Sales", ylab="Price")
