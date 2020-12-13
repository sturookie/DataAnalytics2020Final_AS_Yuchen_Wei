UK_Library <- read.csv("F:/rpi/data_analys/project/Libraries_and_GAV.csv")
attach(UK_Library)
names(UK_Library)
UK_Library

mm<- lm(GVA.of.City.billion.~Number.of.Libraries)
mm

summary(mm)$coef


plot(GVA.of.City.billion.~Number.of.Libraries)
help(abline)
abline(mm)
abline(mm,col=2,lwd=3)
newdata <- data.frame(Number.of.Libraries = 150)
predict(mm,(newdata))               


