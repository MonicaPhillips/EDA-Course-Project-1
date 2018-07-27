# Set up parameters 
par(mfrow = c(2,2), mar = c(4,4,2,1), oma = c(0,0,2,0))

# Plot all 4 graphs
plot(rawdata$Global_active_power ~ rawdata$DateTime, type = "l", xlab = "", ylab = "Global Active Power")
plot(rawdata$Voltage ~ rawdata$DateTime, type = "l", xlab = "datetime", ylab = "Voltage")
plot(rawdata$Sub_metering_1 ~ rawdata$DateTime, type="l", ylab="Energy sub metering", xlab="")
lines(rawdata$Sub_metering_2 ~ rawdata$DateTime, col = "red")
lines(rawdata$Sub_metering_3 ~ rawdata$DateTime, col = "blue")
legend("topright", cex = .75,  col = c("black", "red", "blue"), lwd = c(1,1,1),  c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
plot(rawdata$Global_reactive_power ~ rawdata$DateTime, type = "l", xlab = "datetime", ylab = "Global_reactive_power")

# copy to png file and turn off device
dev.copy(png,'plot4.png', height=480, width=480)
dev.off()


