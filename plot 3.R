file_url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

library(lubridate)
library(data.table)

# if(!dir.exists("./Data")) {dir.create("./Data")}
# if(!file.exists("/Data/householdpower.zip")) {download.file(file_url, "./Data/householdpower.zip")}
# unzip("./Data/householdpower.zip")

power <- fread("household_power_consumption.txt", na.strings ="?")


##I'm not 100% sure why interval behaves this way...but this is the correct way:
interval <- new_interval("2007-01-31 00:00:00", "2007-02-02")

##subset within the interval
power_sub <- power[power$Date %within% interval]

##so what are we measuring in? hours? Oh let's just create that index then :)
power_sub <- mutate(power_sub, index=1:2880)

power$Date <- dmy_hms(paste(power$Date, power$Time))

with(power_sub, points(Sub_metering_3 ~ index, col="blue", type = "l"))
with(power_sub, points(Sub_metering_2 ~ index, col="red", type = "l"))
with(power_sub, points(Sub_metering_1 ~ index), col="black", type = "l")
