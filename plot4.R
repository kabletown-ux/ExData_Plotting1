source( "load-data.R" )

doPlot4 <- function() {
    
    loadData()
    
    # cache current env
    env <- par()
    
    # Open png device
    if ( png ) png( filename = "plot4.png" )
    
    # config 2 x 2 plot 
    par( mfrow = c( 2, 2 ) )
    
    # Make plots
    # 1st
    plot( rawData$Time, rawData$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)" )
    # 2nd
    plot( rawData$Time, rawData$Voltage, col=1, type = "l", ylab = "Voltage", xlab = "Date/Time" )
    # 3rd
    plot( rawData$Time, rawData$Sub_metering_1, col=1, type = "l" )
    points( rawData$Time, rawData$Sub_metering_2, col=2, type = "l" )
    points( rawData$Time, rawData$Sub_metering_3, col=4, type = "l" )
    # Add legend to 3rd
    legend( "topright", legend = c( "Sub Metering 1", "Sub Metering 2", "Sub Metering 3" ), col = c( "black", "red", "blue" ), lty = "solid", box.lwd = 0, box.col = "white", bg = "white" )
    
    # 4th
    plot( rawData$Time, rawData$Global_reactive_power, col=1, type = "l", ylab = "Global Reactive Power", xlab = "Date/Time" )
    
    # Turn off device
    if ( png ) dev.off()
    
    # return to old env
    par( env )
}