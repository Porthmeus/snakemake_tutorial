# Porthmeus
# 30.06.21

# redirect messages to the log file
log <- file(snakemake@log[[1]], open="wt")
sink(log)
sink(log, type="message")

# load library
require(tximport)

# defines variables from snakemake
meta <- snakemake@input[["meta"]]
files <- snakemake@input[["samples"]]
raw <- snakemake@output[["raw"]]
abund <- snakemake@output[["abund"]]

# read the SampleDescription
desc <- read.csv(meta)

# import file into tximport object
txi <- tximport(files, type = "salmon", txOut = TRUE)

# export the abundance and count matrix
write.csv(file=raw, txi$counts)
write.csv(file=abund, txi$abundance)
