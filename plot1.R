## aml. plot1
## reading data
df <- read.table("household_power_consumption.txt"
               , header=T, sep=';' , na.strings="?"
               # ,nrows=2075259
               # , check.names=F
               , stringsAsFactors=F
               # , comment.char=""
               # , quote='\"'
               )

## data preparation
# nrow(df)
df$Date <- as.Date(df$Date, format = "%d/%m/%Y")
str(df)
df2 <- df[ (df$Date >= "2007-02-01" & df$Date <= "2007-02-02") , ]
nrow(df2)
rm(df)
dateandtime <- paste(as.Date(df2$Date), df2$Time)
df2$Datetime <- as.POSIXct(dateandtime)

## Plot 1
hist(df2$Global_active_power
     , main="Global Active Power"
     , xlab="Global Active Power (kilowats)"
     , ylab="Frequency"
     , col="Red"
     )
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()
