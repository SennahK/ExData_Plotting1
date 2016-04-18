rm(list=ls()) # or use Remove all objects in the Misc menu
setwd('/home/am/Documents/STUDIUM/EnvEuro/1_Courses/03_Weitere/09_R_Hopkins/04_Exploratory_data_analysis/Week_1_assignment/')
EPC <- read.table(file='household_power_consumption.txt', header=T, na.strings=c("?", "NA"), sep=';') # Load data set 

EPC1 <- EPC[EPC$Date %in% c("1/2/2007","2/2/2007") ,]         # subsetting to only include relevant dates

png('plot1.png', width = 480, height = 480, units='px')         # use file device 
hist(EPC1$Global_active_power, col='red', main='Global Active Power', xlab='Global Active Power (kilowatts)')
dev.off()
