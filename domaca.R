setwd("~/Documents/bioinformatika")

for (i in c(1:13)) {
  tabName <- as.character(list.files(path="~/Documents/bioinformatika", pattern = ".Rlogs$"[i]))
  tab <- read.csv(tabName, header = TRUE, sep = "", quote = "\"", dec = ".", fill = TRUE, comment.char = "")
  jpeg(as.character(paste(tabName,".jpeg", sep="")))
  par(mar=c(3,3,2,0,5), mgp=c(1.75,0.5,0), cex.main=0.85, cex.lab=1, cex.axis=0.85)
  plot(x=c(1:length(tab$V24)), y=tab$V24, xlab="position", ylab="coverage", main=paste(tabName, "sars2: ORFs", sep="\n"), type="l")
  dev.off()
}



 