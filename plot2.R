
## Exploratory Data Analysis - Project 1
## Plot 2


## Assigns the downloaded and unzipped data to the variable ??dataFile??
dataFile <- "household_power_consumption.txt"

## Extracts the subset we are working on
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subsetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

## Assigns the subsets of data to the variables ??DT??(date and time) and ??GAP?? (global active power)
DT <- strptime(paste(subsetData$Date, subsetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
GAP <- as.numeric(subsetData$Global_active_power)

## Plots the data to the screen device
plot(DT, type="s", GAP, cex.axis = 0.65, cex.lab = 0.65, xlab="", ylab="Global Active Power (kilowatts)")

## Plots the data to a PNG file device
png("plot2.png", width=480, height=480)
plot(DT, type="s", GAP, cex.axis = 1, cex.lab = 1, xlab="", ylab="Global Active Power (kilowatts)")
dev.off()


## The following descriptions of the 9 variables in the dataset are taken from the UCI web site:

## Date: Date in format dd/mm/yyyy
## Time: time in format hh:mm:ss
## Global_active_power: household global minute-averaged active power (in kilowatt)
## Global_reactive_power: household global minute-averaged reactive power (in kilowatt)
## Voltage: minute-averaged voltage (in volt)
## Global_intensity: household global minute-averaged current intensity (in ampere)
## Sub_metering_1: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered).
## Sub_metering_2: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light.
## Sub_metering_3: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.
