#http://blog.tafkas.net/2013/06/22/five-years-of-weight-tracking/

#read data with header row:
# Date,WeightActual,FatPercentActual,Lean mass (lb),Comments
tw <- read.csv(file="./TrendWeightData.csv",header=T)
summary(tw)

#remove interpolated values
#tw <- tw[tw$WeightIsInterpolated == "False",]

#convert strings to date and extract year
#tw$Date <- as.POSIXlt(as.character(tw$Date), format="%Y-%m-%d")
tw$Date <- as.POSIXlt(as.character(tw$Date), format="%m/%d/%y %H:%M")
tw$Year <- tw$Date$year + 1900

#
tw <- tw[tw$Date > as.POSIXlt("2016-03-1"),]


library("ggplot2")

p <- ggplot(tw, aes(Date, WeightActual)) + theme_bw() + ggtitle("Body Weight") + ylab("Body weight (lb)")
p <- p + geom_point(aes(colour=FatPercentActual)) + scale_colour_gradient(limits=c(10, 20), low="green", high="red", guide_legend(title = "Body Fat %"))
#p <- p + geom_point(aes(colour=FatPercentActual)) + scale_colour_gradient(low="green", high="red", guide_legend(title = "Body Fat %"))
#p <- p + geom_line()
p <- p + geom_smooth(span=.4)
p

p <- ggplot(tw, aes(WeightActual, FatPercentActual)) + theme_bw()
p <- p + ggtitle("Body Weight vs. Body Fat %") + xlab("Body Weight (lb)") + ylab("Body Fat %")
#p <- p + geom_point()
p <- p + geom_point(aes(colour=FatPercentActual)) + scale_colour_gradient(limits=c(10, 20), low="green", high="red", guide_legend(title = "Body Fat %"))
p <- p + geom_smooth(method=lm, col="red")
p
