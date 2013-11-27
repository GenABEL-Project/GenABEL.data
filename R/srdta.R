#=====================================================================================
#
#       Filename:  srdta.R
#
#    Description:  Generate srdta.RData from GenABEL/inst/extdata/srgenos.dat
#
#        Version:  1.0
#        Created:  20-Nov-2013
#       Revision:  none
#       
#
#         Author:  Maksim V. Struchalin
#        Company:  YuriiA
#          Email:  m.struch@mail.ru
#
#=====================================================================================



##If you would like to generate the RData during 'R CMD build' process, then move this R file in GenABEL.data/data 
#
#
#
#
#
#if(require(GenABEL)) {
#adpr <- paste(getwd(), "/../inst/extdata/", sep="")
#genofile <- paste(adpr,"srgenos.dat",sep="")
#convert.snp.text(infile=genofile,outfile="srgenos.raw",bcast=200)
#phenofile <- paste(adpr,"srphenos.dat",sep="")
#srdta <- load.gwaa.data(geno="srgenos.raw",pheno=phenofile)
#unlink("srgenos.raw")
#
#unlink(genofile)
#unlink(phenofile)
#unlink(paste(adpr, "/original_data/", sep=""), recursive = T)
#rm(adpr, genofile, phenofile)
#
#} else {
#		error("GenABEL package should be installed. Try install.package(GenABEL).")
#}
#
