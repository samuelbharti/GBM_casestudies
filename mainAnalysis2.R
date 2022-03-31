#GSE84010_Patients Bevacizumab data
library(data.table)
library(umap)
library(Rtsne)
library(DESeq2)
library(ggplot2)

currentDir <- getwd()
dataDir <- paste0(currentDir,'/datasets')
resultDir <- paste0(currentDir,'/results/')


# gbm_cdnn_bmc @ bmc
gbm.cdnn.samples <- fread(paste0(dataDir,'/gbm_cdnn_bmc/GBM_Datasets/GSE84010_Patients Bevacizumab data.txt'),
                          header = TRUE)
gbm.cdnn.mrna <- t(gbm.cdnn.samples[19:804,3:352])
colnames(gbm.cdnn.mrna) <- gbm.cdnn.mrna[1,]
gbm.cdnn.mrna <- data.frame(gbm.cdnn.mrna[-1,])

gbm.cdnn.samples <- data.frame(t(gbm.cdnn.samples[1:18,]))
gbm.cdnn.samples[1,] <- sub('.','',gbm.cdnn.samples[1,])
colnames(gbm.cdnn.samples) <- gbm.cdnn.samples[1,]
gbm.cdnn.samples <- gbm.cdnn.samples[-c(1:3),]

Unclassified <- rownames(gbm.cdnn.samples)[gbm.cdnn.samples$`tcga subtype` == 'Unclassified']
gbm.cdnn.samples <- gbm.cdnn.samples[!(row.names(gbm.cdnn.samples) %in% Unclassified),]
gbm.cdnn.mrna  <- gbm.cdnn.mrna[!(row.names(gbm.cdnn.mrna) %in% Unclassified),]


gbm.cdnn.mrna.mat <- data.matrix(gbm.cdnn.mrna[,-c(1:28)])
#gbm.cdnn.mrna.mat <- as.matrix(gbm.cdnn.mrna.mat)
#gbm.cdnn.mrna.mat <- as.numeric(gbm.cdnn.mrna.mat)

set.seed(NULL)
gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat, 
#                           n_neighbors = 4
                           # spread = 0.9,
                           #  min_dist = 0.2
#                                                      metric = "manhattan",
#                                           learning_rate = 0.7,
#                           n_epochs = 100
)
ggplot(
  data.frame(gbm.cdnn.mrna.umap$layout),
  aes(
    x = X1,
    y = X2,
    color = gbm.cdnn.samples$`tcga subtype` # label points with different colors for each `subgroup`
  )
) +  labs(color='Subtype') + 
  geom_point() +
  ggtitle("UMAP Embedding of GBM data (CDNN)") +
  xlab("X-Coordinate") + ylab("Y-Coordinate")

gbm.cdnn.mrna.tsne <- Rtsne(gbm.cdnn.mrna.mat)
#plot(gbm.cdnn.mrna.tsne$Y)
ggplot(
  data.frame(gbm.cdnn.mrna.tsne$Y),
  aes(
    x = X1,
    y = X2,
    color = gbm.cdnn.samples$`tcga subtype` # label points with different colors for each `subgroup`
  )
) +
  geom_point()

write.csv(data.frame(gbm.cdnn.mrna.umap$layout), paste0(resultDir,'GBM_cdnn_umap.csv'))
write.csv(data.frame(gbm.cdnn.mrna.tsne$Y), paste0(resultDir,'GBM_cdnn_tsne.csv'))
write.csv(data.frame(gbm.cdnn.samples), paste0(resultDir,'GBM_cdnn_clinical.csv'))


