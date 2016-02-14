dataproject1=read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings = "?") 
selecteddata <- dataproject1[dataproject1$Date %in% c("1/2/2007","2/2/2007") ,] 
datetime <- strptime(paste(finaldata$Date, finaldata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

# Plot1 
par(mfrow=c(1,1)) 
windows.options(width=480,height=480) 
hist(selecteddata$Global_active_power,col="red",xlab="Global Active Power (kilowatts)",ylab="Frequency",main="Global Active Power") 
dev.copy(png,file="plot1.png") 
dev.off() 
