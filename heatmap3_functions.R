library(heatmap3)
testHeatmap3<-function(logCPM, annotations) {    
  sampleColors = mapstk11toColor(annotations)
  heatmap3(logCPM, margins=c(5,8), ColSideColors=sampleColors) 
  heatmap3(logCPM, margins=c(5,8), ColSideColors=sampleColors, 
           legendfun=function()showLegend(legend=c("WT", 
           "MUT", "?"), col=c("blue", "green", "red"), cex=1.5))
  ColSideAnn<-data.frame(Drug=annotations[["Subject_stk11"]])
  heatmap3(logCPM,ColSideAnn=ColSideAnn,
           ColSideFun=function(x)showAnn(x),
           ColSideWidth=0.8)
}

