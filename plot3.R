## aml. plot3

plot( df2$Sub_metering_1 ~ df2$dateandtime
      , type="l"
      , ylab="Global Active Power (kilowats)"
      , xlab=""
      )
# add more lines
lines( df2$Sub_metering_2 ~ df2$dateandtime, col = 'Red' )
lines( df2$Sub_metering_3 ~ df2$dateandtime, col = 'Blue')

legend("topright",
    col = c("black", "red", "blue"),
    lty = 1,
    lwd = 2,
    legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
    )

dev.copy(png,
         file = "plot3.png",
         height = 480,
         width = 480)
dev.off()
