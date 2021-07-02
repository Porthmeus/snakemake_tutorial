# Porthmeus
# 30.06.21

# get a histogram for the number of read counts across all genes and samples


rule plotHist:
    input:
        RC = "results/data/raw_RC.csv"
    output:
        hist = report("results/plots/histogram.png",
                caption = "../reports/histogram.rst",
                category = "Plots")
    log: "logs/plotHist.log"
    conda: "../envs/snakemake-tutorial.yaml"
    script: "../scripts/plotHist.R"
