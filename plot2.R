data <- read.table("household_power_consumption.txt",header = T,sep = ";")

p2<- subset(data,data$Date=="1/2/2007" | data$Date=="2/2/2007")
TimeDate <- strptime(paste(p2$Date, p2$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
p2 <-as.numeric(p2$Global_active_power)
png("plot2.png", width=480, height=480)
plot(TimeDate, p2, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()


