## aml. plot3
## reading data
df <- read.table("household_power_consumption.txt"
                 , header=T, sep=';' , na.strings="?"
                 , stringsAsFactors=F
)

## data preparation
df$Date <- as.Date(df$Date, format = "%d/%m/%Y")
df2 <- df[ (df$Date >= "2007-02-01" & df$Date <= "2007-02-02") , ]
rm(df)
dateandtime <- paste(as.Date(df2$Date), df2$Time)
df2$dateandtime <- as.POSIXct(dateandtime)


#plot 3
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
