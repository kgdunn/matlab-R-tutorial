# 1.    Plot the data manally in R
# 2.    Identify the points
# 3.    Save as a PDF
# 4.    Open the PDF and resave as JPG for the web tutorial

rm <- read.csv('http://datasets.connectmv.com/file/raw-material-properties.csv')  

# Plot the data as you normally would
plot(rm$size2, ylab="Particle size: level 2", main="Powder raw material")

# Now use the identify(...) command, with the same data as you plotted. 
# Add the "labels" option to let R use label names from "Sample" column.
identify(rm$size2, labels=rm$Sample)