library(data.table)

WorkingDir <- getwd()

PlotData <- readRDS(file.path(WorkingDir, "summarySCC_PM25.rds"))

#utils::View(PlotData)

#filter data set for the city of Baltimore, Maryland
PlotData <- subset(PlotData, fips == "24510")

plot(unique(PlotData$year), tapply(PlotData$Emissions, PlotData$year, sum), 
     xlab = "Year", ylab = "Total Emissions in Tons", main = "Yearly Emissions in Baltimore City, Maryland")

png("Plot2.png", type = c("windows"))

plot(unique(PlotData$year), tapply(PlotData$Emissions, PlotData$year, sum), 
     xlab = "Year", ylab = "Total Emissions in Tons", main = "Yearly Emissions in Baltimore City, Maryland")

dev.off()