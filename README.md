## Introduction

This assignment uses data from
the <a href="http://archive.ics.uci.edu/ml/">UC Irvine Machine
Learning Repository</a>, titled "Individual household
electric power consumption Data Set."

The data used are from 2007-02-01 and 2007-02-02.

## Method

The purpose of the scripts in this repository is to examine how household energy usage varies over a 2-day period in February, 2007.

The scripts for Plots 1-4 (labelled respectively) all download and read in the data and subset it in the same way. 

<ol>
<li>Plot 1 is a histogram of global active power in kilowatts.</li>
<li>Plot 2 is a continuous (by minute) plot of the global active power in kilowatts.</li>
<li>Plot 3 is a continuous (by minute) plot of different appliance power draws in kilowatts.</li>
<li>Plot 4 combines the first three plots, and plots Voltage continuously by minute.</li>
</ol>


## CodeBook
Available here:
* <b>Dataset</b>: <a href="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip">Electric power consumption</a> [20Mb]

* <b>Description</b>: Measurements of electric power consumption in
one household with a one-minute sampling rate over a period of almost
4 years. Different electrical quantities and some sub-metering values
are available.


The following descriptions of the 9 variables in the dataset are taken
from
the <a href="https://archive.ics.uci.edu/ml/datasets/Individual+household+electric+power+consumption">UCI
web site</a>:

<ol>
<li><b>Date</b>: Date in format dd/mm/yyyy </li>
<li><b>Time</b>: time in format hh:mm:ss </li>
<li><b>Global_active_power</b>: household global minute-averaged active power (in kilowatt) </li>
<li><b>Global_reactive_power</b>: household global minute-averaged reactive power (in kilowatt) </li>
<li><b>Voltage</b>: minute-averaged voltage (in volt) </li>
<li><b>Global_intensity</b>: household global minute-averaged current intensity (in ampere) </li>
<li><b>Sub_metering_1</b>: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered). </li>
<li><b>Sub_metering_2</b>: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light. </li>
<li><b>Sub_metering_3</b>: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.</li>
</ol>

## References

UC Irving Machine Learning Repository. "Individual household
electric power consumption Data Set."

Warren, Al. 2015. John Hopkins University: Exploratory Data Analysis Class Discussion Forums. Coursera.

