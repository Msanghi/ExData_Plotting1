full_data <- read.csv("household_power_consumption.txt",header=T, sep=";")

full_data$Date <- as.Date(full_data$Date,format="%d/%m/%Y")

data <- subset(full_data, subset=(Date>="2007-02-01" & Date <="2007-02-02"))

data$Global_active_power <- as.numeric(data$Global_active_power)

hist(data$Global_active_power, main="Global Active Power", 
                 xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()

