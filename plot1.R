data <- read.table("household_power_consumption.txt",header = T,sep = ";")

p1 <- subset(data,data$Date=="1/2/2007" | data$Date=="2/2/2007",select = c("Global_active_power"))
p1 <-as.numeric(p1$Global_active_power)
png("plot1.png", width=480, height=480)
hist(p1,col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()










