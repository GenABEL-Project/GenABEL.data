#This file is needed only to clean the package during R CMD build
	

#adpr <- paste(getwd(), "/../inst/extdata/", sep="")

unlink(paste(getwd(), "/../inst/", sep=""), recursive = T)
unlink(paste(getwd(), "/../R/", sep=""), recursive = T)

