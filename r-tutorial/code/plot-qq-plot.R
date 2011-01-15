bitmap(file='../images/plot-qq-plot.jpg', type="png256", res=300,  height=8, width=8, pointsize=14)
par(mar=c(4.2, 4.2, 0.2, 1))
data <- rnorm(100)  # a 100 normally distributed values
library(car)
qqPlot(data)
dev.off()