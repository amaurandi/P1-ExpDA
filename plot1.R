## aml. plot1
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





## Plot 1
hist(df2$Global_active_power
     , main="Global Active Power"
     , xlab="Global Active Power (kilowats)"
     , ylab="Frequency"
     , col="Red"
     )
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()

