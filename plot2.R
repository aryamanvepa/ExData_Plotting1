data<-read.delim("household_power_consumption.txt", sep = ";",na.strings="?")
data$Date<-as.Date(data$Date, "%d/%m/%Y")
data1<-data[data$Date=="2007-02-01"|data$Date=="2007-02-02",]
data1$DateTime<-as.POSIXct(paste(data1$Date,data1$Time), format="%Y-%m-%d %H:%M:%S")
#plot2
png("plot2.png")
plot(data1$DateTime,data1$Global_active_power,type="n", xlab="", ylab="Global Active Power")
lines(data1$DateTime,data1$Global_active_power)
dev.off()