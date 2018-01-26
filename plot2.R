## aml. plot2
## preparing data
dateandtime <- paste(as.Date(df2$Date), df2$Time)
df2$dateandtime <- as.POSIXct(dateandtime)

# plot nº2

plot(df2$Global_active_power~df2$dateandtime
     , type="l"
     , ylab="Global Active Power (kilowatts)"
     , xlab=""
     )

dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()
