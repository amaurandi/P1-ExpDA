## aml. plot4
par(
    mfrow = c(2, 2),
    mar = c(4, 4, 2, 1),
    oma = c(0, 0, 2, 0)
)



plot(
    df2$Global_active_power ~ df2$dateandtime,
    type = "l",
    ylab = "Global Active Power (kilowats)",
    xlab = ""
)

plot(
    df2$Voltage ~ df2$dateandtime,
    type = "l",
    ylab = "Voltage (volt)",
    xlab = ""
)
plot(
    df2$Sub_metering_1 ~ df2$dateandtime,
    type = "l",
    ylab = "Global Active Power (kilowats)",
    xlab = ""
)

lines(df2$Sub_metering_2 ~ df2$dateandtime, col = 'Red')
lines(df2$Sub_metering_3 ~ df2$dateandtime, col = 'Blue')

legend("topright",
    col = c("black", "red", "blue"),
    lty = 1,
    lwd = 2,
    bty = "n",
    legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
)
plot(
    df2$Global_reactive_power ~ df2$dateandtime,
    type = "l",
    ylab = "Global Rective Power (kilowats)",
    xlab = ""
)

dev.copy(png,
         file = "plot4.png",
         height = 480,
         width = 480)
dev.off()