loadHPCData <- function() {
  fileName <- "./UCI_HPC.zip"
  fileURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  
  if (!file.exists(fileName)) {
    print ("Downloading File")
    download.file(fileURL, destfile = fileName, method = "curl") 
  }
  
  ## Simple unzipping of file
  unzip("./UCI_HPC.zip")
  
  hpcDf <- read.table(file = "./household_power_consumption.txt", 
                      sep = ";", header = TRUE,
                      colClasses = c("character", "character", rep("numeric",7)),
                      na = "?")
  hpcDf$Date <- as.Date(hpcDf$Date, format = "%d/%m/%Y")
  hpcTestData <- hpcDf[hpcDf$Date %in% as.Date(c("2007-02-01", "2007-02-02")), ]
  return(hpcTestData)
}