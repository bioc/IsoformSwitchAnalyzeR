## IsoformSwitchAnalyzeR: Identify, Annotate and Visualize Alternative Splicing and Isoform Switches with Functional Consequences from both short- and long-read RNA-seq data.


Since 2010, state-of-the-art bioinformatics tools have allowed researchers to reconstruct and quantify full length transcripts from RNA-seq data. Such genome-wide isoform resolution data has the potential to facilitate both genome-wide analysis of alternative isoform usage and identification of isoform switching. Unfortunately, these types of analyses are still only rarely done and/or reported --- in fact, only 11% of articles analyzing RNA-seq data published since 2016 performed any isoform analysis. 

To solve these problems we developed IsoformSwitchAnalyzeR. IsoformSwitchAnalyzeR is an easy to use R package which enables statistical identification as well as visualization of isoform switches with predicted functional consequences from RNA-seq data.

# Installation 

Note that IsoformSwitchAnalyzeR now depends on the pfamAnalyzeR package. This can be installed via this command

```
if (!requireNamespace("devtools", quietly = TRUE)){
    install.packages("devtools")
}
if (!requireNamespace("pfamAnalyzeR", quietly = TRUE)){
    devtools::install_github("kvittingseerup/pfamAnalyzeR")
}
```

We *highly* recommend installing the latest version of  [IsoformSwitchAnalyzeR from Bioconductor](https://bioconductor.org/packages/devel/bioc/html/IsoformSwitchAnalyzeR.html).

This can be done by running the following in an R terminal:
```
if (!requireNamespace("BiocManager", quietly = TRUE)){
    install.packages("BiocManager")
}
BiocManager::install(version='devel')
BiocManager::install("IsoformSwitchAnalyzeR")
```

Alternatively IsoformSwitchAnalyzeR can be installed from github by running the following in an R terminal:

```
if (!requireNamespace("devtools", quietly = TRUE)){
    install.packages("devtools")
}
devtools::install_github("kvittingseerup/IsoformSwitchAnalyzeR", build_vignettes = TRUE)
```


# Vignette
The vignette contains a lot of information on how to use IsoformSwitchAnalyzeR and what it can be used for. After installation, the vignette can be accessed from the R console by typing:

```
browseVignettes("IsoformSwitchAnalyzeR")
```

Alternatively, it can be accessed online (through Bioconductor) [here](https://bioconductor.org/packages/devel/bioc/vignettes/IsoformSwitchAnalyzeR/inst/doc/IsoformSwitchAnalyzeR.html)
