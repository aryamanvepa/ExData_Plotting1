data<-read.delim("household_power_consumption.txt", sep = ";",na.strings="?")
data$Date<-as.Date(data$Date, "%d/%m/%Y")
data1<-data[data$Date=="2007-02-01"|data$Date=="2007-02-02",]
data1$DateTime<-as.POSIXct(paste(data1$Date,data1$Time), format="%Y-%m-%d %H:%M:%S")
png("plot1.png")
hist(data1$Global_active_power, xlab="Global Active Power (kilowatts)", ylab="Frequency", col="red")
dev.off()