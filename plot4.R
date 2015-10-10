##################################################################################################
# Project 1: Exploratory Data Analysis - Plotting (Plot3)
#
#
##################################################################################################

#### Load all necessary libraries 

##################################################################################################
# Step 0: Necessary evil. Setup environment, download data files etc. 
##################################################################################################

## Setup environment. Using local directory to make code portable different OS 
setwd("./")

#### Source common functions
source("loadHPCData.R")

hpcData <- loadHPCData()
date_time <- strptime(paste(hpcData$Date, hpcData$Time), format = "%Y-%m-%d %H:%M:%S")

########################################################################################
# Setup plot environment
########################################################################################

png("plot4.png", width = 480, height = 480, units = "px", bg = "transparent")
par(mfrow = c(2,2))

########################################################################################
# First Plot
########################################################################################
plot(date_time, 
     hpcData$Global_active_power, type = "l",
     xlab = "", ylab = "Global Active Power (kilowatts)")

########################################################################################
# Second Plot
########################################################################################
plot(date_time, 
     hpcData$Voltage, type = "l",
     xlab = "datetime", ylab = "Voltage")

########################################################################################
# Third Plot
########################################################################################
plot(date_time, 
     hpcData$Sub_metering_1, type = "l", col = "black",
     xlab = "", ylab = "Global Active Power (kilowatts)")
lines(date_time, hpcData$Sub_metering_2, type = "l", col = "red")
lines(date_time, hpcData$Sub_metering_3, type = "l", col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty=1, lwd=2, 
       col=c("black", "red", "blue"))

########################################################################################
# Fourth Plot
########################################################################################
plot(date_time, 
     hpcData$Global_reactive_power, type = "l",
     xlab = "datetime", ylab = "Global_reactive_power")


dev.off()
print("Plotting All charts on same page")