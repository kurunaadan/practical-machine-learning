clean_NAs = function(data, str){
    temp <- which(colSums(is.na(data)) != 0 )
    drop.cols <- names(temp)
    clean.training.data <- data[,!(names(data) %in% drop.cols)]
    
    return(clean.training.data)
}