# plot 2 
# essentially, global active power by hour

file_url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

library(lubridate)
library(data.table)

# if(!dir.exists("./Data")) {dir.create("./Data")}
# if(!file.exists("/Data/householdpower.zip")) {download.file(file_url, "./Data/householdpower.zip")}
# unzip("./Data/householdpower.zip", exdir = "./Data")

## power <- fread("./Data/household_power_consumption.txt", na.strings ="?")


##I'm not 100% sure why interval behaves this way...but it works: 
interval <- new_interval("2007-01-31 00:00:00", "2007-02-02")

##subset within the interval
power_sub <- power[power$Date %within% interval]

##this lovely gem is from Al Warren on the class forums:
power_sub$Date<- ymd_hms(paste(power_sub$Date, power_sub$Time))

## open file cnxn, plot it, close it!

png(filename="plot2.png")
with(power_sub, plot(Global_active_power ~ Date, type="l",
                     ylab = "Global Active Power in Kilowatts"))
dev.off()
