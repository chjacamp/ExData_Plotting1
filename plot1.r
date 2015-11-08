## Plot 1 ##

file_url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

library(lubridate)
library(data.table)

# if(!dir.exists("./Data")) {dir.create("./Data")}
# if(!file.exists("/Data/householdpower.zip")) {download.file(file_url, "./Data/householdpower.zip")}
# unzip("./Data/householdpower.zip")

power <- fread("household_power_consumption.txt", na.strings ="?")

## set date class d-m-y with lubridate
power$Date <- dmy(power$Date)

##I'm not 100% sure why interval behaves this way...but this is the correct way:
interval <- new_interval("2007-01-31 00:00:00", "2007-02-02")

##subset within the interval
power_sub <- power[power$Date %within% interval]

## make a histogram
hist(power_sub$Global_active_power, col="red")



