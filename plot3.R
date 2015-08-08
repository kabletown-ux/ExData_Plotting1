source( "load-data.R" )

doPlot3 <- function() {
    
    # Conditional data loading
    if ( is.null( rawData) ) { 
        loadData() 
    } else {
        if ( debug ) print( "Using cached version of rawData..." )
    }
    
    # Open png device
    png( filename = "plot3.png" )
    
    # Make plot
    # TODO: plot is raw.  Make shiney!
    plot( rawData$Time, rawData$Sub_metering_1, col=1, type = "l" )
    # TODO: plot is raw.  Make shiney!
    points( rawData$Time, rawData$Sub_metering_2, col=2, type = "l" )
    # TODO: plot is raw.  Make shiney!
    points( rawData$Time, rawData$Sub_metering_3, col=4, type = "l" )
    
    # Turn off device
    dev.off()
}