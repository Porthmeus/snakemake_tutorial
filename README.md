# Installation

Install conda in order to use the packaging manager to install the needed software.
Conda is an independent package management environment which provides easy installation of a wide variety of packages and programs - and comes in handy when using snakemake later on. Install miniconda (a minimal version of conda) by downloading the [latest installer](https://docs.conda.io/en/latest/miniconda.html).

After this is done, install mamba - an improved package manager over conda, especially for downloading and solving dependencies:

```
# installs mamba into the "base" environment of conda
conda install -n base -c conda-forge mamba
```

Download this repository either by downloading from the website or use:

```
git clone github.com/Porthmeus/snakemake_tutorial; cd snakemake_tutorial
```


With mamba install all necessary packages into an new environment called "snakemake-tutorial"

```
conda activate base
mamba env create -n snakemake-tutorial --file tutorial_snakemake/workflow/env/snakemake-tutorial.yaml
```

To use the environment (and snakemake) call:

```
conda activate snakemake-tutorial
```
