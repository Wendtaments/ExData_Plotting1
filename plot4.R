
## Exploratory Data Analysis - Project 1
## Plot 4


## Assigns the downloaded and unzipped data to the variable ??dataFile??
dataFile <- "household_power_consumption.txt"

## Extracts the subset we are working on
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subsetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

## Declaring variables
DT <- strptime(paste(subsetData$Date, subsetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
GAP <- as.numeric(subsetData$Global_active_power)
GRP <- as.numeric(subsetData$Global_reactive_power)
V <- as.numeric(subsetData$Voltage)
SM1 <- as.numeric(subsetData$Sub_metering_1)
SM2 <- as.numeric(subsetData$Sub_metering_2)
SM3 <- as.numeric(subsetData$Sub_metering_3)

## Plots the data to the screen device
par(mfrow = c(2, 2), cex.axis = 0.65, cex.lab = 0.65) 
plot(DT, GAP, type="l", xlab="", ylab="Global Active Power")
plot(DT, V, type="l", xlab="datetime", ylab="Voltage")
plot(DT, SM1, type="l", ylab="Energy Submetering", xlab="")
lines(DT, SM2, type="l", col="red")
lines(DT, SM3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty="n", cex = 0.65, lty=, lwd=2.5, col=c("black", "red", "blue"))
plot(DT, GRP, type="l", xlab="datetime", ylab="Global_reactive_power")

## Plots the data to a PNG file device
png("plot4.png", width=480, height=480)
par(mfrow = c(2, 2), cex.axis = 1, cex.lab = 1) 
plot(DT, GAP, type="l", xlab="", ylab="Global Active Power")
plot(DT, V, type="l", xlab="datetime", ylab="Voltage")
plot(DT, SM1, type="l", ylab="Energy Submetering", xlab="")
lines(DT, SM2, type="l", col="red")
lines(DT, SM3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty="n", cex = 1, lty=, lwd=2.5, col=c("black", "red", "blue"))
plot(DT, GRP, type="l", xlab="datetime", ylab="Global_reactive_power")
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
