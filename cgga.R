library(data.table)
library(umap)
library(Rtsne)
library(DESeq2)
library(ggplot2)

currentDir <- getwd()
dataDir <- paste0(currentDir,'/datasets')
resultDir <- paste0(currentDir,'/results/')



gbm.cgga.samples <- fread(paste0(dataDir,'/gbm_cdnn_bmc/GBM_Datasets/Clinical_CGGA.csv'),
header = TRUE)
gbm.cgga.mrna <- fread(paste0(dataDir,'/gbm_cdnn_bmc/GBM_Datasets/CGGA.csv'),
header = TRUE)
gbm.cgga.mrna <- data.frame(gbm.cgga.mrna)
#rownames(gbm.cgga.mrna) <- gbm.cgga.mrna[,1]
gbm.cgga.mrna <- gbm.cgga.mrna[,-1]

nrow(gbm.cgga.mrna[ rowSums(gbm.cgga.mrna) > 2500, ])

gbm.cgga.mrna <- gbm.cgga.mrna[ rowSums(gbm.cgga.mrna) > 2500, ]


gbm.cgga.mrna.norm <- log2(gbm.cgga.mrna+1)

gbm.cgga.mrna.norm <- gbm.cgga.mrna.norm %>% mutate_all(~(scale(.) %>% as.vector))

gbm.cgga.mrna.norm <- t(gbm.cgga.mrna.norm)

gbm.cgga.mrna.norm <- scale(gbm.cgga.mrna.norm, center = TRUE, scale = TRUE)

# gbm.cgga.mrna.mat <- gbm.cgga.mrna
# # gbm2018.mrna.mat <- as.matrix(gbm2018.mrna.df)
# gbm.cgga.mrna.mat <- round(gbm.cgga.mrna.mat)
sample_data <- data.frame("Samples" = gbm.cgga.samples$CGGA_ID,
"Type"   = gbm.cgga.samples$`TCGA subtype`)
# dds <- DESeqDataSetFromMatrix(countData = gbm.cgga.mrna.mat,
# colData   = sample_data,
# design    = ~Type )
# dds = DESeq(dds)  # main function
# nrow(dds)
# resultsNames(dds)
# # We will only keep rows that have a sum count between all samples greater than 5. This will remove most of the genes that mostly have "0" counts.
# dds2 <- dds[ rowSums(counts(dds)) > 5, ]
# nrow(dds2)
# 
# dds3 <- estimateSizeFactors(dds2)
# norm3 <- counts(dds3, normalized=TRUE)



# Variance Stabilizing Transformation
# vsd <- vst(dds2)
# head(assay(vsd), 6)
# norm <- assay(vsd)

set.seed(NULL)
n = 10
gbm.cgga.mrna.umap <- umap(gbm.cgga.mrna.norm,
#n_neighbors = n,
#init = 'pca',
#  spread = 0.9,
#  min_dist = 0.2
#metric = "manhattan",
#metric = "correlation",
# learning_rate = 0.7,
#  n_epochs = 200
)
ggplot(
data.frame(gbm.cgga.mrna.umap$layout),
aes(
x = X1,
y = X2,
color = gbm.cgga.samples$`TCGA subtype` # label points with different colors for each `subgroup`
)
) + ggtitle(paste0("With ",n," neighbors.")) +
geom_point()





gbm.cgga.mrna.tsne <- Rtsne(gbm.cgga.mrna.norm)
ggplot(
  data.frame(gbm.cgga.mrna.tsne$Y),
  aes(
    x = X1,
    y = X2,
    color = gbm.cgga.samples$`TCGA subtype`
  )
) +
  geom_point()


gbm.cgga.pca <- prcomp(gbm.cgga.mrna.norm)
ggplot(
  data.frame(gbm.cgga.pca$x),
  aes(
    x = PC1,
    y = PC2,
    color = gbm.cgga.samples$`TCGA subtype` # label points with different colors for each `subgroup`
  )
) + ggtitle(paste0("With ",n," neighbors.")) +
  geom_point()



library(densvis)
gbm.cgga.densmap <- densmap(t(norm),
        n_neighbors = 5L,
        metric = "manhattan",
        n_epochs = 750L,
#        min_dist = 0,
        )

ggplot(
  data.frame(gbm.cgga.densmap),
  aes(
    x = X1,
    y = X2,
    color = gbm.cgga.samples$`TCGA subtype`
  )
) +
  geom_point()
