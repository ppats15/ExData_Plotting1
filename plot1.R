##################################################################################################
# Project 1: Exploratory Data Analysis - Plotting (Plot1)
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
png("plot1.png", width = 480, height = 480, units = "px", bg = "transparent")
message("Global Active Power Histogram")
hist(hpcData$Global_active_power,
     col="red",main="Global Active Power", 
     xlab = "Global Active Power (kilowatts)", ylab="Frequency")
dev.off()
print("Plotting 1st Histogram")