# Porthmeus
# 30.06.21

# log file
log <- file(snakemake@log[[1]], open = "wt")
sink(log)
sink(log, type = "message")


# define variables
RC <- snakemake@input[["RC"]]
hist_file <- snakemake@output[["hist"]]

# read matrix
RCmat <- as.matrix(read.csv(RC, row.names=1))

# plot the histogram
png(file = hist_file)
hist(RCmat)
dev.off()

