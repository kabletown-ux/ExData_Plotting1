#lubridate b0rk3d on MBP...
#library( lubridate )

debug <- TRUE
png <- TRUE

loadData <- function() {
 
    # Conditional data loading
    if ( is.null( rawData) ) { 
        
        ## get column names from top of file...   
        rawNames <- read.csv( "../data/power.txt", header = T, skip = 0, sep=";", nrows = 1, na.strings='?' )
        colNames <- colnames( rawNames )
        if ( debug ) print( colNames )
        
        ## grab only what we need
        rawData <<- read.table( "../data/power.txt", header = F, na.strings='?', skip = 66637, sep=";", nrows = 2880 )
        ## ...then substitute into table
        names( rawData ) <<- colNames
        
        ## update data/time
        #rawData$Date <<- dmy( rawData$Date ) ## lubridate b0rk3d
        #rawData$Time <<- dmy( rawData$Time ) ## lubridate b0rk3d!
        rawData$Date <<- as.Date( rawData$Date,format="%d/%m/%Y" )
        
        ## output seems verbose/redundant. Source: https://github.com/davidzafrilla/ExData_Plotting1/commit/fd21fc500dfc8558082cc03449eb8464ba62bb14
        dateStr <- paste( as.character( rawData$Date ), as.character( rawData$Time ), sep=" " )
        timeStr <- strptime( dateStr, format="%Y-%m-%d %H:%M" )
        rawData$Time <<- timeStr
        
    } else {
        
        if ( debug ) print( "Using cached version of rawData..." )
    }
}

size <- function() {
    I <- 1;
    C <- "c";
    L <- TRUE;
    D <- 1.11111118;
    N <- NULL;
    
    l <- list();
    
    print( class( I ) );
    print( object.size( I ) )
    
    print( class( C ) );
    print( object.size( C ) )
    
    print( class( L ) );
    print( object.size( L ) )
    
    print( class( l ) );
    print( object.size( l ) )
    
    print( class( D ) );
    print( object.size( D ) )
    
    print( class( N ) );
    print( object.size( N ) )
}
dataSize <- function( fields, rows ) {
    
    row <- fields * 48 ##avg size per field
    print( row * rows )
}


