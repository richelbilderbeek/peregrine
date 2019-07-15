# Test if a DNA alignment is plotted nicely on Peregrine
library(ape)
library(phangorn)
fdir <- system.file("extdata/trees", package = "phangorn")
primates <- read.phyDat(file.path(fdir, "primates.dna"), format = "interleaved")
dna_alignment <- as.DNAbin(primates)

png("myfile.png", width = 800, height = 600, res = 144)
ape::image.DNAbin(x = dna_alignment)
dev.off()
