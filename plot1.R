library(data.table)

WorkingDir <- getwd()

PlotData <- readRDS(file.path(WorkingDir, "summarySCC_PM25.rds"))

#utils::View(PlotData)

#plot sum total of tons of pm25 by year
plot(unique(PlotData$year), tapply(PlotData$Emissions, PlotData$year, sum), xlab = "Year", ylab = "Total Emissions in Tons")

png("Plot1.png", type = c("windows"))

plot(unique(PlotData$year), tapply(PlotData$Emissions, PlotData$year, sum), xlab = "Year", ylab = "Total Emissions in Tons")

dev.off()