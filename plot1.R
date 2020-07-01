library(ggplot2)
library(sqldf)

data <- read.csv.sql("household_power_consumption.txt","select * from file where Date = '1/1/2007' or Date = '2/2/2007' ",sep=";")


png(filename='plot1.png', width=480, height=480, units='px')

hist(data$Global_active_power, main="Global Active Power", col="red", xlab="Global Active Power (kilowatts)")

dev.off()
