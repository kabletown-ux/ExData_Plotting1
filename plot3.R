source( "load-data.R" )

doPlot3 <- function() {
    
    loadData() 
    
    # Open png device
    if ( png ) png( filename = "plot3.png" )
    
    # Make plot
    plot( rawData$Time, rawData$Sub_metering_1, col=1, type = "l", ylab = "Energy sub metering", xlab = "" )
    points( rawData$Time, rawData$Sub_metering_2, col=2, type = "l" )
    points( rawData$Time, rawData$Sub_metering_3, col=4, type = "l" )
    
    # Add legend
    legend( "topright", legend = c( "Sub Metering 1", "Sub Metering 2", "Sub Metering 3" ), col = c( "black", "red", "blue" ), lty = "solid" )
    
    # Turn off device
    if ( png ) dev.off()
}