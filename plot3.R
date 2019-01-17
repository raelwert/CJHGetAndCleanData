library(data.table)
library(ggplot2)

WorkingDir <- getwd()

PlotData <- readRDS(file.path(WorkingDir, "summarySCC_PM25.rds"))

#utils::View(PlotData)

#filter data set for the city of Baltimore, Maryland
PlotData <- subset(PlotData, fips == "24510")

aggdata <- aggregate(PlotData$Emissions, by=list(PlotData$type, PlotData$year), FUN = sum)

names(aggdata) <- c("Type","Years","Emissions")

aggdata$Years <- as.factor(as.character(aggdata$Years))

ggplot(data=aggdata, aes(x=Years, y=Emissions, fill=Type)) + geom_bar(stat="identity")

png("Plot3.png", type = c("windows"))

ggplot(data=aggdata, aes(x=Years, y=Emissions, fill=Type)) + geom_bar(stat="identity")

dev.off()