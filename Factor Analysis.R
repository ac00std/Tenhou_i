library(MASS)
library(vegan)
library(rgl)

data1=read.csv("Tenhoui_data.csv",header=T,row.names=1)

result2=factanal(data1,factor=3,rotation="promax",scores="regression")
result2$loadings
t=result2$score
plot3d(t,type="n",xlim=c(-1,1),ylim=c(-1,1),zlim=c(-1,1))
text3d(t,text=1:25,col="red",xlim=c(-1,1),ylim=c(-1,1),zlim=c(-1,1))
