#=====================================================================================
#
#       Filename:  ge03d2c.R
#
#    Description:  Generate ge03d2c.RData from the ge03d2.RData
#
#        Version:  1.0
#        Created:  27-Nov-2013
#       Revision:  none
#       
#
#         Author:  Maksim V. Struchalin
#        Company:  YuriiA
#          Email:  m.struch@mail.ru
#
#=====================================================================================



if(require(GenABEL)) {

# How we get id and snop names:
#_____________________________
#load("../../GenABEL/data/ge03d2c.RData")
#snpnames_ge03d2c <- colnames(ge03d2c@gtdata)
#idnames_ge03d2c <- rownames(ge03d2c@gtdata)
#write.table(data.frame(snpnames_ge03d2c=snpnames_ge03d2c), file="../inst/extdata/ge03d2c_snp_names.txt", quote=F, row.names=F, col.names=T)
#write.table(data.frame(idnames_ge03d2c=idnames_ge03d2c), file="../inst/extdata/ge03d2c_id_names.txt", quote=F, row.names=F, col.names=T)
#_____________________________

load("ge03d2.RData")
adpr <- paste(getwd(), "/../inst/extdata/", sep="")
snpnames_file <- paste(adpr, "ge03d2c_snp_names.txt", sep="")
idnames_file <- paste(adpr, "ge03d2c_id_names.txt", sep="")

snpnames_ge03d2c <- read.table(snpnames_file, header=T, strings=F)$snpnames_ge03d2c
idnames_ge03d2c <- read.table(idnames_file, header=T, strings=F)$idnames_ge03d2c

ge03d2c <- ge03d2[idnames_ge03d2c,snpnames_ge03d2c]

rm(adpr, snpnames_ge03d2c, idnames_ge03d2c, ge03d2, pop2.ids, qc.nostr, qc.str)
unlink(snpnames_file)
unlink(idnames_file)


} else {
		error("GenABEL package should be installed. Try install.package(GenABEL).")
}
