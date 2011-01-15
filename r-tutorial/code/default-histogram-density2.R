bitmap('../images/default-histogram-density2.jpg', type="png256", width=10, height=7, res=300, pointsize=14)

rm <- read.csv('http://datasets.connectmv.com/file/raw-material-properties.csv')

# Plot the histogram for the "density2" variable in the data:
hist(rm$density2)

dev.off()