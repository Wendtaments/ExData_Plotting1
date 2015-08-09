## Exploratory Data Analysis - Project 1
## Plot 1


## Downloads the dataset
url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(url, destfile = "ElectricPowerConsumption.zip", method = "curl")

## Unzips the dataset and assigns it to the variable ??dataFile??
dataFile <- unzip("ElectricPowerConsumption.zip", "household_power_consumption.txt")

## Extracts the subset we are working on
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subsetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]


## Assigns a subset of data to the variable ??GAP?? (global active power)
GAP <- as.numeric(subsetData$Global_active_power)

## Plots the data to the screen device
hist(GAP, col="red", cex.axis = 0.65, cex.lab = 0.65, cex.main = 0.7, main="Global Active Power", xlab="Global Active Power (kilowatts)")

## Plots the data to a PNG file device
png("plot1.png", width=480, height=480)
hist(GAP, col="red", cex.axis = 1, cex.lab = 1, cex.main = 1, main="Global Active Power", xlab="Global Active Power (kilowatts)")
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
