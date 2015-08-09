source( "load-data.R" )

doPlot1 <- function() {
    
    loadData()
    
    # Open png device
    if ( png ) png( filename = "plot1.png" )
    
    # Make plot
    hist( rawData$Global_active_power, col = "red", main = "Global Active Power", xlab = "Kilowatts" )
    
    # Turn off device
    if ( png ) dev.off()
}