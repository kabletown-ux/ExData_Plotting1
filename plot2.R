source( "load-data.R" )

doPlot2 <- function() {
    
    loadData()
    
    # Open png device
    if ( png ) png( filename = "plot2.png" )
    
    # Make plot
    plot( powerData$Time, powerData$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)" )
    
    # Turn off device
    if ( png ) dev.off()
}