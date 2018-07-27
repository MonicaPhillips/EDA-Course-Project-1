# Set prameters and plot graph
par(mfrow = c(1,1), mar = c(5.1, 4.1, 4.1, 2.1))
plot(rawdata$Global_active_power~rawdata$DateTime, type="l", ylab="Global Active Power (kilowatts)", xlab="")

# copy to png file and turn off device
dev.copy(png,'plot2.png', height=480, width=480)
dev.off()
