# Set working directory
setwd("~/R/Exploratory Data Analysis/EDA CP1")

# Access data.table library
library(data.table)

# Read in data file, remove missing data (?s)
rawdata <- fread("household_power_consumption.txt", header = TRUE, na.strings = "?", colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'))

# Format Date column
rawdata$Date <- as.Date(rawdata$Date, "%d/%m/%Y")

# Take only data for 1 and 2 February 2007
rawdata <- subset(rawdata,Date >= as.Date("2007-2-1") & Date <= as.Date("2007-2-2"))

# Take only complete cases
rawdata <- rawdata[complete.cases(rawdata),]

# Format DateTime column
rawdata$DateTime <- paste(rawdata$Date, rawdata$Time) 

# Put DateTime column in POSIXct format
rawdata$DateTime <- as.POSIXct(rawdata$DateTime)


