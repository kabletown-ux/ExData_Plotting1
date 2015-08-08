source( "load-data.R" )

doPlot1 <- function() {
    
    # Conditional data loading
    if ( is.null( rawData) ) { 
        loadData() 
    } else {
        if ( debug ) print( "Using cached version of rawData..." )
    }
    
    # Open png device
    png( filename = "plot1.png" )
    
    # Make plot
    # TODO: plot is raw.  Make shiney!
    hist( rawData$Global_active_power )
    
    # Turn off device
    dev.off()
}