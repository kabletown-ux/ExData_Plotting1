source( "load-data.R" )

doPlot2 <- function() {
    
    # Conditional data loading
    if ( is.null( rawData) ) { 
        loadData() 
    } else {
        if ( debug ) print( "Using cached version of rawData..." )
    }
    
    # Open png device
    png( filename = "plot2.png" )
    
    # Make plot
    # TODO: plot is raw.  Make shiney!
    plot( rawData$Time, rawData$Global_active_power, type = "l" )
    
    # Turn off device
    dev.off()
}