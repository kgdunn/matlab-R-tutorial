bitmap('../images/show-DISTpdf.jpg', type="png256", width=10, height=7, res=300, pointsize=14)

x <- seq(-4, 4, 0.01)
d.norm = dnorm(x)
par(mar=c(4.2, 4.2, 0.2, 1))
plot(x, d.norm, type="l", xlab="x", ylab="Probability distribution", 
     main="", cex.lab=1.5, cex.main=1.8, lwd=4, 
     cex.sub=1.8, cex.axis=1.8) # ylim=c(0, 0.45))

abline(v=0, col = "gray60")

a1 = -0.90
arrows(a1, y=-0.2, x1=a1, y1=dnorm(a1), code=0, lwd=2)
arrows(a1, y=dnorm(a1), x1=-4, y1=dnorm(a1), code=2, lwd=2)
text(-2.5, dnorm(a1)+0.02, "DISTpdf(...)", cex=1.5)

dev.off()