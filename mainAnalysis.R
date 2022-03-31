library(data.table)
library(umap)
library(Rtsne)
library(DESeq2)
library(ggplot2)

currentDir <- getwd()
dataDir <- paste0(currentDir,'/datasets')
resultDir <- paste0(currentDir,'/results/')


# # brca_cptac_2020 @ cell
# bcptac2020.patients <- fread(paste0(dataDir,'/brca_cptac_2020/brca_cptac_2020/data_clinical_patient.txt'),
#                              header = TRUE)
# bcptac2020.samples  <- fread(paste0(dataDir,'/brca_cptac_2020/brca_cptac_2020/data_clinical_sample.txt'),
#                              header = TRUE)
# bcptac2020.mrna     <- fread(paste0(dataDir,'/brca_cptac_2020/brca_cptac_2020/data_mrna_seq_fpkm_zscores_ref_all_samples.txt'), 
#                              header = TRUE)
# 
# 
# bcptac2020.mrna.df <- bcptac2020.mrna
# bcptac2020.mrna.df <- bcptac2020.mrna.df[,-1]
# 
# bcptac2020.umap <- umap(as.matrix(bcptac2020.mrna.df))




# gbm_tcga_pan_can_atlas_2018 @ cell
gbm2018.patients <- fread(paste0(dataDir,'/gbm_tcga_pan_can_atlas_2018/gbm_tcga_pan_can_atlas_2018/data_clinical_patient.txt'),
                             header = TRUE)
gbm2018.samples  <- fread(paste0(dataDir,'/gbm_tcga_pan_can_atlas_2018/gbm_tcga_pan_can_atlas_2018/data_clinical_sample.txt'),
                             header = TRUE)
gbm2018.mrna     <- fread(paste0(dataDir,'/gbm_tcga_pan_can_atlas_2018/gbm_tcga_pan_can_atlas_2018/data_mrna_seq_v2_rsem.txt'), 
                             header = TRUE)


gbm2018.mrna.df <- gbm2018.mrna
gbm2018.mrna.df <- gbm2018.mrna.df[!duplicated(gbm2018.mrna.df$Entrez_Gene_Id),]
rownames(gbm2018.mrna.df) <- gbm2018.mrna.df$Entrez_Gene_Id
gbm2018.mrna.df <- gbm2018.mrna.df[,-c(1,2)]
#colnames(gbm2018.mrna.df) <- gsub('.{3}$', '', colnames(gbm2018.mrna.df))


gbm2018.samples.df <- gbm2018.samples
colnames(gbm2018.samples.df) <- as.character(gbm2018.samples.df[4,])
gbm2018.samples.df <- gbm2018.samples.df[-c(1:4),]
gbm2018.samples.df <- gbm2018.samples.df[gbm2018.samples.df$SAMPLE_ID %in% colnames(gbm2018.mrna.df),] 
gbm2018.samples.df <- gbm2018.samples.df[match(colnames(gbm2018.mrna.df), gbm2018.samples.df$SAMPLE_ID),]

# gbm2018.patients.df <- gbm2018.patients
# colnames(gbm2018.patients.df) <- as.character(gbm2018.patients.df[4,])
# gbm2018.patients.df <- gbm2018.patients.df[-c(1:4),]
# gbm2018.patients.df <- gbm2018.patients.df[gbm2018.patients.df$PATIENT_ID %in% gbm2018.samples.df$PATIENT_ID,] 


gbm2018.mrna.mat <- as.matrix(gbm2018.mrna.df)
gbm2018.mrna.mat <- round(gbm2018.mrna.mat)
sample_data <- data.frame("Samples" = gbm2018.samples.df$SAMPLE_ID, 
                          "Type"   = gbm2018.samples.df$TUMOR_TYPE)


dds <- DESeqDataSetFromMatrix(countData = gbm2018.mrna.mat, 
                              colData   = sample_data,
                              design    = ~Type )
dds = DESeq(dds)  # main function
nrow(dds)
resultsNames(dds)

# We will only keep rows that have a sum count between all samples greater than 5. This will remove most of the genes that mostly have "0" counts.
dds <- dds[ rowSums(counts(dds)) >= 10, ]
nrow(dds)

# Variance Stabilizing Transformation
vsd <- vst(dds, blind = TRUE)
head(assay(vsd), 6)
norm <- assay(vsd)



gbm2018.mrna.umap <- umap(t(norm), n_neighbors = 5)
#plot(gbm2018.mrna.umap$layout)

ggplot(
  data.frame(gbm2018.mrna.umap$layout),
  aes(
    x = X1,
    y = X2,
    color = gbm2018.samples.df$TUMOR_TYPE # label points with different colors for each `subgroup`
  )
) +
  geom_point()


gbm2018.mrna.tsne <- Rtsne(t(norm))
plot(gbm2018.mrna.tsne$Y)





# GBM TCGA @ cell 2013

gbm.tcga.cell2013 <- fread(paste0(dataDir,'/gbm_tcga_pub2013_clinical_data.tsv'), 
                           header = TRUE)

gbm2018.samples.df2 <- gbm2018.samples.df[!duplicated(gbm2018.samples.df$PATIENT_ID),]

sum(gbm2018.samples.df2$PATIENT_ID %in% gbm.tcga.cell2013$`Patient ID`)
sum(gbm.tcga.cell2013$`Patient ID` %in% gbm2018.samples.df2$PATIENT_ID)
#nrow(brca.tcga.pancan[brca.tcga.pancan$`Patient ID` %in% TCGA_CDR.brca$bcr_patient_barcode,])


gbm.tcga.cell2013 <- gbm.tcga.cell2013[gbm.tcga.cell2013$`Patient ID` %in% gbm2018.samples.df2$PATIENT_ID,]
gbm2018.samples.df2 <- gbm2018.samples.df2[gbm2018.samples.df2$PATIENT_ID %in% gbm.tcga.cell2013$`Patient ID`,]

gbm.tcga.cell2013 <- gbm.tcga.cell2013[match(gbm.tcga.cell2013$`Patient ID`, gbm2018.samples.df2$PATIENT_ID),]
all(gbm.tcga.cell2013$`Patient ID` == gbm2018.samples.df2$PATIENT_ID)


s.del <- gbm2018.samples.df$SAMPLE_ID[duplicated(gbm2018.samples.df$PATIENT_ID)]
#gbm2018.mrna.df2 <- gbm2018.mrna.df[,!(colnames(gbm2018.mrna.df) %in% s.del)]

gbm2018.mrna.df2 <- subset(gbm2018.mrna.df, select = (colnames(gbm2018.mrna.df) %in% gbm.tcga.cell2013$`Sample ID`))
gbm.tcga.cell2013 <- gbm.tcga.cell2013[gbm.tcga.cell2013$`Sample ID` %in% colnames(gbm2018.mrna.df2),]

all(gbm.tcga.cell2013$`Sample ID` == colnames(gbm2018.mrna.df2))


gbm2018.mrna.mat2 <- as.matrix(gbm2018.mrna.df2)
gbm2018.mrna.mat2 <- round(gbm2018.mrna.mat2)
sample_data2 <- data.frame("Samples" = gbm.tcga.cell2013$`Sample ID`, 
                          "Type"   = gbm.tcga.cell2013$`Diagnosis Age`)


dds <- DESeqDataSetFromMatrix(countData = gbm2018.mrna.mat2, 
                              colData   = sample_data2,
                              design    = ~1 )
dds = DESeq(dds)  # main function
nrow(dds)
resultsNames(dds)


# We will only keep rows that have a sum count between all samples greater than 5. This will remove most of the genes that mostly have "0" counts.
dds <- dds[ rowSums(counts(dds)) >= 10, ]
nrow(dds)

# Variance Stabilizing Transformation
vsd <- vst(dds, blind = TRUE)
head(assay(vsd), 6)
norm <- assay(vsd)


sum(is.na(gbm.tcga.cell2013$`Gene Expression Subtype`))
gbm.tcga.cell2013$`Gene Expression Subtype`[is.na(gbm.tcga.cell2013$`Gene Expression Subtype`)] <- 'Missing Type'

gbm2018.mrna.umap2 <- umap(t(norm), n_neighbors = 3)
#plot(gbm2018.mrna.umap$layout)

ggplot(
  data.frame(gbm2018.mrna.umap2$layout),
  aes(
    x = X1,
    y = X2,
    color = gbm.tcga.cell2013$`Gene Expression Subtype` # label points with different colors for each `subgroup`
  )
) +
  geom_point()





