# Set parameters and plot graph
par(mfrow = c(1,1), mar = c(5.1, 4.1, 4.1, 2.1))
plot(rawdata$Sub_metering_1 ~ rawdata$DateTime, type="l", ylab="Energy sub metering", xlab="")
lines(rawdata$Sub_metering_2 ~ rawdata$DateTime, col = "red")
lines(rawdata$Sub_metering_3 ~ rawdata$DateTime, col = "blue")
legend("topright", cex = .5, col = c("black", "red", "blue"), lwd = c(1,1,1), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

# copy to png file and turn off device
dev.copy(png,'plot3.png', height=480, width=480)
dev.off()




