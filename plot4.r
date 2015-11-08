# plot 4

file_url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

library(lubridate)
library(data.table)

# if(!dir.exists("./Data")) {dir.create("./Data")}
# if(!dir.exists("/Data/householdpower.zip")) {download.file(file_url, "./Data/householdpower.zip")}
# unzip("./Data/householdpower.zip", exdir = "./Data")

## power <- fread("./Data/household_power_consumption.txt", na.strings ="?")


##I'm not 100% sure why interval behaves this way...but it works: 
interval <- new_interval("2007-01-31 00:00:00", "2007-02-02")

##subset within the interval
power_sub <- power[power$Date %within% interval]

##this lovely gem is from Al Warren on the class forums:
power_sub$Date<- ymd_hms(paste(power_sub$Date, power_sub$Time))

png(filename="plot4.png")
par(mfrow = c(2,2), mar = c(4,4,2,1))

with(power_sub, {
  plot(Global_active_power ~ Date, type="l")
  plot(Voltage ~ Date, type="l")
  plot.new()
    points(Sub_metering_3 ~ Date, col="blue", type = "l")
    points(Sub_metering_2 ~ Date, col="red", type = "l")
    points(Sub_metering_1 ~ Date, col="black", type = "l")
  plot(Global_reactive_power ~ Date, type="l")
})

dev.off()