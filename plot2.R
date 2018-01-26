## aml. plot2
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




# plot 2
plot(df2$Global_active_power~df2$dateandtime
     , type="l"
     , ylab="Global Active Power (kilowatts)"
     , xlab=""
     )

dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()
