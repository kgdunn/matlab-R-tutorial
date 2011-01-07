website <- read.csv('http://datasets.connectmv.com/file/website-traffic.csv')
bitmap(file='../images/website-traffic-base.jpg', type="png256", res=300,  height = 5, width = 9, pointsize=12)
plot(website$Visits)
dev.off()

bitmap(file='../images/website-traffic-boxplot-default.jpg', type="png256", res=300,  height = 5, width = 9, pointsize=12)
boxplot(website$Visits ~ website$DayOfWeek)
dev.off()

bitmap(file='../images/website-traffic-boxplot-ordered.jpg', type="png256", res=300,  height = 5, width = 9, pointsize=12)
day.names <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday" )
days <- factor(website$DayOfWeek, level=day.names)
boxplot(website$Visits ~ days)
dev.off()

