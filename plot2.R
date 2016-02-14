dataproject1=read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings = "?") 
selecteddata <- dataproject1[dataproject1$Date %in% c("1/2/2007","2/2/2007") ,] 
datetime <- strptime(paste(selecteddata$Date, selecteddata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

# Plot2 
par(mfrow=c(1,1)) 
windows.options(width=480,height=480) 
plot(x=datetime,y=selecteddata$Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab="") 
dev.copy(png,file="plot2.png") 
dev.off() 
