data<-read.delim("household_power_consumption.txt", sep = ";",na.strings="?")
data$Date<-as.Date(data$Date, "%d/%m/%Y")
data1<-data[data$Date=="2007-02-01"|data$Date=="2007-02-02",]
data1$DateTime<-as.POSIXct(paste(data1$Date,data1$Time), format="%Y-%m-%d %H:%M:%S")
#plot3
png("plot3.png")
plot(data1$DateTime, data1$Sub_metering_1, type="n",xlab="",ylab="Energy sub metering")
lines(data1$DateTime,data1$Sub_metering_1)
lines(data1$DateTime,data1$Sub_metering_2, col="red")
lines(data1$DateTime,data1$Sub_metering_3, col="blue")
dev.off()