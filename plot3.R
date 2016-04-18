rm(list=ls()) # or use Remove all objects in the Misc menu
setwd('/home/am/Documents/STUDIUM/EnvEuro/1_Courses/03_Weitere/09_R_Hopkins/04_Exploratory_data_analysis/Week_1_assignment/')
EPC <- read.table(file='household_power_consumption.txt', header=T, na.strings=c("?", "NA"), sep=';') # Load data set 

EPC1 <- EPC[EPC$Date %in% c("1/2/2007","2/2/2007") ,]
dt <- strptime(paste(EPC1$Date, EPC1$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
ESM1 <- as.numeric(EPC1$Sub_metering_1)
ESM2 <- as.numeric(EPC1$Sub_metering_2)
ESM3 <- as.numeric(EPC1$Sub_metering_3)

png('plot3.png', width = 480, height = 480, units='px')
plot(dt, ESM1, type='n', ylab='Energy sub metering', xlab='')
points(dt, ESM1, type='l')
points(dt, ESM2, type='l', col='red')
points(dt, ESM3, type='l', col='blue')
legend('topright', lty=1, col=c('black', 'red', 'blue'), legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'))
dev.off()
