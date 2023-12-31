\name{extractSwitchSummary}
\alias{extractSwitchSummary}

\title{
Summarize Isoform Switches test Result.
}
\description{
Summarize the number of switching isoforms/genes identified.
}
\usage{
extractSwitchSummary(
    switchAnalyzeRlist,
    filterForConsequences=FALSE,
    alpha=0.05,
    dIFcutoff = 0.1,
    onlySigIsoforms = FALSE,
    includeCombined=nrow(unique(switchAnalyzeRlist$isoformFeatures[,c('condition_1','condition_1')])) > 1
)
}

\arguments{
\item{switchAnalyzeRlist}{
A \code{switchAnalyzeRlist} object.
}
\item{filterForConsequences}{
A logical indicating whether to filter for genes with functional consequences. Requires that analyzeSwitchConsequences() have been run on the switchAnalyzeRlist. The output will then be the number of significant genes and isoforms originating from genes with predicted consequences. Default is FALSE.
}
  \item{alpha}{
The cutoff which the FDR correct p-values must be smaller than for calling significant switches. Default is 0.05.
}
\item{dIFcutoff}{
The cutoff which the changes in (absolute) isoform usage must be larger than before an isoform is considered switching. This cutoff can remove cases where isoforms with (very) low dIF values are deemed significant and thereby included in the downstream analysis. This cutoff is analogous to having a cutoff on log2 fold change in a normal differential expression analysis of genes to ensure the genes have a certain effect size. Default is 0.1 (10\%).
}

 \item{onlySigIsoforms}{ A logic indicating whether to only consider significant isoforms, meaning only analyzing genes where at least two isoforms which both have significant usage changes in opposite direction (quite strict) Naturally this only works if the isoform switch test used have isoform resolution (which the build in \link{isoformSwitchTestDEXSeq} has). If FALSE all isoforms with an absolute dIF value larger than \code{dIFcutoff} in a gene with significant switches (defined by \code{alpha} and \code{dIFcutoff}) are included in the pairwise comparison. Default is FALSE (non significant isoforms are also considered based on the logic that if one isoform changes it contribution - there must be an equivalent opposite change in usage in the other isoforms from that gene).}

\item{includeCombined}{
A logic indicating whether a combined summary across all comparisons should also be made. Default is TRUE if more than 1 comparison is analyzed and FALSE if only 1 comparison is analyzed.
}
}

\value{
A \code{data.frame} with the number of switches found in each comparison (as well as when all data is considered if \code{includeCombined=TRUE})
}

\references{
Vitting-Seerup et al. The Landscape of Isoform Switches in Human Cancers. Mol. Cancer Res. (2017).
}

\author{
Kristoffer Vitting-Seerup
}
\seealso{
\code{\link{preFilter}}\cr
\code{\link{isoformSwitchTestDEXSeq}}\cr
\code{\link{isoformSwitchTestSatuRn}}\cr
\code{\link{extractSwitchOverlap}}\cr
\code{\link{extractTopSwitches}}\cr
\code{\link{analyzeSwitchConsequences}}
}

\examples{
# Load example data and prefilter
data("exampleSwitchList")
exampleSwitchList <- preFilter(exampleSwitchList)

# Perfom test
exampleSwitchListAnalyzed <- isoformSwitchTestDEXSeq(exampleSwitchList)

# extract summary of number of switching features
extractSwitchSummary(exampleSwitchListAnalyzed)

}
