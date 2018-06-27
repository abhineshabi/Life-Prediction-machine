library(ggplot2)

mo=read.csv(choose.files())
key=data.frame(val=800)

fit=lm(temp ~ val,mo)
predict(fit,key)

predict(fit)
newcar = data.frame(val=450)
predict(fit, newcar)
ggplot(mo,mapping = aes(mo$val,mo$temp))+geom_point()+geom_smooth(method="lm")




mo=read.csv(choose.files())
key=data.frame(val=800)

fit=lm(temp ~ val,mo)
predict(fit,key)
ki=subset.data.frame(mo$sensorReading>800)
predict(fit)
newcar = data.frame(sensorReading=450)
predict(fit, newcar)
require(ggplot2)
ggplot(mo,mapping = aes(mo$sensorReading,mo$temp))+geom_point()+geom_smooth(method="lm")




##for multiple linear Regression
mfit = lm(sensorReading ~ Time + temp + hum, data=mo)
mfit = lm(mpg ~ wt + disp + cyl, data=mtcars)
ggplot(mo, aes(x=mo$Time, y=mo$sensorReading, col=mo$temp, size=mo$hum)) + geom_point()