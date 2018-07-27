# Set parameters and plot histogram
par(mfrow = c(1,1), mar = c(5.1, 4.1, 4.1, 2.1))
hist(rawdata$Global_active_power, col= "red", breaks = 12, main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

# copy to png file and turn off device
dev.copy(png,'plot1.png', height=480, width=480)
dev.off()

