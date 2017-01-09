##Get dataset 

dataset <- read.csv("./w1/household_power_consumption.txt", header=T, sep=';', na.strings="?", 
                    nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')


dataset$Date <- as.Date(dataset$Date, format="%d/%m/%Y")

## Subsetting the data
data <- subset(dataset, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
rm(dataset)

## Converting dates
time <- paste(as.Date(data$Date), data$Time)
data$time <- as.POSIXct(time)

## Plot 2
plot(data$Global_active_power~data$time, type="l",
     ylab="Global Active Power (kilowatts)", xlab="")
dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()

## Saving to file
dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()
