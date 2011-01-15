rm <- read.csv('http://datasets.connectmv.com/file/raw-material-properties.csv')

bitmap('../images/plot-annotations-1.jpg', type="png256", width=10, height=7, res=300, pointsize=14)
par(mar=c(4.2, 4.2, 0.2, 1))
density2.median <- median(rm$density2, na.rm=TRUE)
density2.median
plot(rm$density2)
abline(h=density2.median)
# You can add a vertical line using the "v" input option.  The "col" option gives the colour.
abline(v=25, col="red")
dev.off()

bitmap('../images/plot-annotations-2.jpg', type="png256", width=10, height=7, res=300, pointsize=14)
par(mar=c(4.2, 4.2, 0.2, 1))
density2.median <- median(rm$density2, na.rm=TRUE)
density2.median
plot(rm$density2)
abline(h=density2.median)
# You can add a vertical line using the "v" input option.  The "col" option gives the colour.
abline(v=25, col="red")
density2.mad = mad(rm$density2, na.rm=TRUE)

# What are the y-values that are 1 median absolute deviation away from the median?
upper = density2.median + density2.mad  # 14.71484
lower = density2.median - density2.mad  # 11.70516

# Now add these as horizontal lines:
abline(h=upper, col="gray80")
abline(h=lower, col="gray80")

# Now draw an arrow at x=10, that goes from y=median to y=median+mad
# The (x0, y0) is the starting coordinate
# The (x1, y1) is the ending coordinate
# The code=3 indicates that arrows heads are drawn on both sides.  Also try codes 0, 1, and 2

arrows(x0=10, y0=density2.median, x1=10, y1=density2.median+density2.mad, code=3)

# Finally, let's add some text to the plot at the point (x=13, y=14)
text(x=13, y=14, labels="One MAD")
dev.off()

