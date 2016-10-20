#bootstrap r
#Brian Kruse
#Introduction to data science
#Section 404
#Date October 12 2016

#Establish to normal vectors one with sample 100 mean 50 sd 15
# and the other sample 100 mean 1000 and sd150
ctl <- rnorm(100, mean=50, sd=15)
ctl1 <- rnorm(100, mean=1000, sd=150)
#Establish exponential vectors sample 100 rate 2 
# and other sample 100 rate 50
expon <- rexp(100,rate=2)
expon1 <- rexp(100, rate=50)
#Establish loop counter
R <- 1000
# bootstrap sample normal vectors ctl and ctl1 with replacement
# bootstrap sampple exponential vectors expon an expon1 with replacement 
for (i in 1:R)
{bootsample1 <- sample(ctl, size=length(ctl),replace=TRUE )
bootsample2 <- sample(ctl1, size=length(ctl1),replace=TRUE )
bootsample3 <- sample(expon, size=length(expon),replace=TRUE )
bootsample4 <- sample(expon1, size=length(expon1),replace=TRUE )}

#output of histograms
#normally distributed
outctl.em <- hist(ctl)
outctl1.em <- hist(ctl1)
outexpon.em <-hist(expon)
outexpon1.em <-hist(expon1)
outbootsample1.em <-hist(bootsample1)
outbootsample2.em <-hist(bootsample2)
outbootsample3.em <-hist(bootsample3)
outbootsample4.em <-hist(bootsample4)
