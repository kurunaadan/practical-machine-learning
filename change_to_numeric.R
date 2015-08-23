change_to_numeric = function(data, str){
    temp <- sapply(colnames(data), FUN = grep, pattern=str)
    t <- which(temp==1)
    for (i in t)
        data[,i] = as.numeric(data[,i])
    return(data)
}