full_data <- read.csv("household_power_consumption.txt",header=T, sep=";")

full_data$Date <- as.Date(full_data$Date,format="%d/%m/%Y")

data <- subset(full_data, subset=(Date>="2007-02-01" & Date <="2007-02-02"))

data$Global_active_power <- as.numeric(data$Global_active_power)

datetime <- paste(as.Date(data$Date), data$Time)
data$Datetime <- as.POSIXct(datetime)

## Plot 2
plot(data$Global_active_power~data$Datetime, type="l",
     ylab="Global Active Power (kilowatts)", xlab="")
dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()

