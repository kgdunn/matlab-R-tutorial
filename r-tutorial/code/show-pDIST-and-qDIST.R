#bitmap('../images/show-pDIST-and-qDIST.jpg', type="png256", width=10, height=7, res=300, pointsize=14)
bmp(file='../images/name-of-file.bmp', width=10, height=7, res=300, pointsize=14)
z <- seq(-4, 4, 0.01)
cumulative.norm = pnorm(z)
par(mar=c(4.2, 4.2, 0.2, 1))
plot(z, cumulative.norm, type="l", xlab="z",  main="",
    ylab="Cumulative area under probability distribution",  cex.lab=1.5, 
    cex.main=1.8, lwd=4, cex.sub=1.8, cex.axis=1.8, ylim=c(0, 1),)
abline(v=0, col = "gray60")

a1 = -0.5
arrows(a1, y=-0.2, x1=a1, y1=pnorm(a1), code=0, lwd=2)
arrows(a1, y=pnorm(a1), x1=-4, y1=pnorm(a1), code=2, lwd=2)
text(-2, pnorm(a1)+0.05, "pDIST(...)", cex=1.5)


a1 = 1
arrows(a1, y=0, x1=a1, y1=pnorm(a1), code=1, lwd=2)
arrows(a1, y=pnorm(a1), x1=-5, y1=pnorm(a1), code=0, lwd=2)
text(2,0.6, "qDIST(...)", cex=1.5)

dev.off()