##################################################################################################
# Project 1: Exploratory Data Analysis - Plotting (Plot2)
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
png("plot2.png", width = 480, height = 480, units = "px", bg = "transparent")
plot(date_time, 
     hpcData$Global_active_power, type = "l",
     xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()
print("Plotting Global Active Power Line Graph")