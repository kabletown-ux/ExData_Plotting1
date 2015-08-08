source( "load-data.R" )

doPlot4 <- function() {
    
    # Conditional data loading
    if ( is.null( rawData ) ) { 
        loadData() 
    } else {
        if ( debug ) print( "Using cached version of rawData..." )
    }
    
    # cache current env
    env <- par()
    
    # Open png device
    if ( png ) png( filename = "plot4.png" )
    
    # config 2 x 2 plot 
    par( mfrow = c( 2, 2 ) )
    
    # Make plots
    # 1st
    # TODO: plot is raw.  Make shiney!
    plot( rawData$Time, rawData$Global_active_power, type = "l" )
    # 2nd
    # TODO: plot is raw.  Make shiney!
    plot( rawData$Time, rawData$Voltage, col=1, type = "l" )
    # 3rd
    # TODO: plot is raw.  Make shiney!
    plot( rawData$Time, rawData$Sub_metering_1, col=1, type = "l" )
    # TODO: plot is raw.  Make shiney!
    points( rawData$Time, rawData$Sub_metering_2, col=2, type = "l" )
    # TODO: plot is raw.  Make shiney!
    points( rawData$Time, rawData$Sub_metering_3, col=4, type = "l" )
    # 4th
    # TODO: plot is raw.  Make shiney!
    plot( rawData$Time, rawData$Global_reactive_power, col=1, type = "l" )
    
    # Turn off device
    if ( png ) dev.off()
    
    # return to old env
    par( env )
}