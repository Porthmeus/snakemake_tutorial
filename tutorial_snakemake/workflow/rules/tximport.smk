# Porthmeus
# 30.06.21

rule tximport:
    input:
        meta = "resources/meta.csv",
        samples = expand("results/data/{sample}_quant/quant.sf",
                sample = samples)
    output:
        raw = "results/data/raw_RC.csv",
        abund = "results/data/abundance_RC.csv"
    params:
        samples = samples
    log:
        "logs/tximport.log"
    conda:
        "../envs/snakemake-tutorial.yaml" # relative path to rule script location
    script:
        "../scripts/tximport.R" # relative path to rule script location
