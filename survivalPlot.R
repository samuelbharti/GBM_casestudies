library(dplyr)
library(survival)
library(survminer)
library(data.table)

?lung

head(lung)
dim(lung)
View(lung)

s <- Surv(lung$time, lung$status)
class(s)
s
head(lung)

survfit(s~1)
survfit(Surv(time, status)~1, data=lung)
sfit <- survfit(Surv(time, status)~1, data=lung)
sfit

summary(sfit)

# model by sex

sfit <- survfit(Surv(time, status)~sex, data=lung)
sfit
summary(sfit)



range(lung$time)
seq(0, 1100, 100)
summary(sfit, times=seq(0, 1000, 100))


sfit <- survfit(Surv(time, status)~sex, data=lung)
plot(sfit)

library(survminer)
ggsurvplot(sfit)

ggsurvplot(sfit, conf.int=TRUE, pval=TRUE, risk.table=TRUE, 
           legend.labs=c("Male", "Female"), legend.title="Sex",  
           palette=c("dodgerblue2", "orchid2"), 
           title="Kaplan-Meier Curve for Lung Cancer Survival", 
           risk.table.height=.15)



# Colon dataset


library(dplyr)
colon <- as_tibble(colon)
colondeath <- filter(colon, etype==2)

# Or, using base subset()
# colondeath <- subset(colon, etype==2)

head(colondeath)
View(colondeath)

sfit <- survfit(Surv(time, etype)~sex, data=colondeath)
sfit
range(colon$time)
summary(sfit,  times=seq(0, 2000, 500))

ggsurvplot(sfit)

ggsurvplot(sfit, conf.int=TRUE, pval=TRUE, 
           legend.labs=c("Female","Male"), legend.title="Sex",  
           palette=c("dodgerblue2", "orchid2"), 
           title="Kaplan-Meier Curve for Colon Cancer Survival")



?colon



sfit <- survfit(Surv(time, etype)~differ, data=colondeath)
ggsurvplot(sfit,conf.int=TRUE, pval=TRUE)

sfit <- survfit(Surv(time, etype)~node4, data=colondeath)
ggsurvplot(sfit,conf.int=TRUE, pval=TRUE,)


TCGA_CDR <- read.csv(paste0(dataDir,'/TCGA_CDR.csv'), header = TRUE)

#TCGA_CDR <- TCGA_CDR[!TCGA_CDR$OS.time == '#N/A' | TCGA_CDR$OS == '#N/A',]


#TCGA_CDR$OS.time <- as.numeric(TCGA_CDR$OS.time)
#TCGA_CDR$OS      <- as.numeric(TCGA_CDR$OS)



TCGA_CDR.brca <- subset(TCGA_CDR, TCGA_CDR$type == 'BRCA')

#N/A
TCGA_CDR.brca <- TCGA_CDR.brca[!TCGA_CDR.brca$OS.time == '#N/A' | TCGA_CDR.brca$OS == '#N/A',]

TCGA_CDR.brca$OS.time <- as.numeric(as.character(TCGA_CDR.brca$OS.time))
TCGA_CDR.brca$OS <- as.numeric(TCGA_CDR.brca$OS)

class(TCGA_CDR.brca$OS.time)
sum(is.na(TCGA_CDR.brca$OS.time))
#TCGA_CDR.brca[is.na(TCGA_CDR.brca$OS.time),]
sum(is.na(TCGA_CDR.brca$OS))

s.brca <- Surv(TCGA_CDR.brca$OS.time,TCGA_CDR.brca$OS)
s.brca
class(s.brca)
range(TCGA_CDR.brca$OS.time)
range(TCGA_CDR.brca$OS)
sfit.brca <- survfit(Surv(OS.time, OS)~1, data=TCGA_CDR.brca)
summary(sfit.brca,  times=seq(0, 8800, 400))
ggsurvplot(sfit.brca)


#
brca.tcga.pancan <- fread(paste0(dataDir,'/brca_tcga_pan_can_atlas_2018_clinical_data.tsv'), 
                          header = TRUE)
count(TCGA_CDR.brca$bcr_patient_barcode %in% brca.tcga.pancan$`Patient ID`)
nrow(brca.tcga.pancan[brca.tcga.pancan$`Patient ID` %in% TCGA_CDR.brca$bcr_patient_barcode,])


brca.tcga.pancan <- brca.tcga.pancan[brca.tcga.pancan$`Patient ID` %in% TCGA_CDR.brca$bcr_patient_barcode,]
TCGA_CDR.brca2 <- TCGA_CDR.brca[TCGA_CDR.brca$bcr_patient_barcode %in% brca.tcga.pancan$`Patient ID`,]

brca.tcga.pancan <- brca.tcga.pancan[match(brca.tcga.pancan$`Patient ID`, TCGA_CDR.brca2$bcr_patient_barcode),]
all(brca.tcga.pancan$`Patient ID` == TCGA_CDR.brca2$bcr_patient_barcode)

TCGA_CDR.brca2$Subtype <- brca.tcga.pancan$Subtype
TCGA_CDR.brca2$OS.time <- round(TCGA_CDR.brca2$OS.time/365.5, 2)

#TCGA_CDR.brca2 <- TCGA_CDR.brca2[!TCGA_CDR.brca2$Subtype == 'BRCA_Normal',]

s.brca2 <- Surv(TCGA_CDR.brca2$OS.time,TCGA_CDR.brca2$OS)
s.brca2
class(s.brca2)
#TCGA_CDR.brca2$OS.time
range(TCGA_CDR.brca2$OS.time)
range(TCGA_CDR.brca2$OS)
sfit.brca2 <- survfit(Surv(OS.time, OS)~Subtype, data=TCGA_CDR.brca2)
summary(sfit.brca2,  times=seq(0, 24, 3))
#ggsurvplot(sfit.brca2)
ggsurvplot(sfit.brca2,conf.int=FALSE, pval=FALSE, risk.table=TRUE,
           legend.labs=c("Basal", 'Her2', 'LumA', 'LumB','Normal-like'), legend.title="Subtype",  
           #palette=c("dodgerblue2", "orchid2"),
           xlab = "Time in years",   # customize X axis label.
           break.time.by = 3, 
           title="Kaplan-Meier Curve for Breast Cancer subtype overall Survival ", 
           risk.table.height=.20)

# PFI
TCGA_CDR.brca2 <- TCGA_CDR.brca2[!TCGA_CDR.brca2$PFI.time == '#N/A' | TCGA_CDR.brca2$PFI == '#N/A',]

TCGA_CDR.brca2$PFI.time <- as.numeric(as.character(TCGA_CDR.brca2$PFI.time))
TCGA_CDR.brca2$PFI <- as.numeric(TCGA_CDR.brca2$PFI)

TCGA_CDR.brca2$PFI.time <- round(TCGA_CDR.brca2$PFI.time/365.5, 2)

s.brca2 <- Surv(TCGA_CDR.brca2$PFI.time,TCGA_CDR.brca2$PFI)
s.brca2
class(s.brca2)
#TCGA_CDR.brca2$OS.time
range(TCGA_CDR.brca2$PFI.time)
range(TCGA_CDR.brca2$PFI)
sfit.brca2 <- survfit(Surv(PFI.time, PFI)~Subtype, data=TCGA_CDR.brca2)
summary(sfit.brca2,  times=seq(0, 24, 3))
#ggsurvplot(sfit.brca2)
ggsurvplot(sfit.brca2,conf.int=FALSE, pval=FALSE, risk.table=TRUE,
           legend.labs=c("Basal", 'Her2', 'LumA', 'LumB','Normal-like'), legend.title="Subtype",  
           #palette=c("dodgerblue2", "orchid2"),
           xlab = "Time in years",   # customize X axis label.
           break.time.by = 3, 
           title="Kaplan-Meier Curve for Breast Cancer subtype PFI Survival ", 
           risk.table.height=.20)


# For GBM data
TCGA_CDR.gbm <- subset(TCGA_CDR, TCGA_CDR$type == 'GBM')
#N/A
TCGA_CDR.gbm <- TCGA_CDR.gbm[!TCGA_CDR.gbm$OS.time == '#N/A' | TCGA_CDR.gbm$OS == '#N/A',]

TCGA_CDR.gbm$OS.time <- as.numeric(as.character(TCGA_CDR.gbm$OS.time))
TCGA_CDR.gbm$OS <- as.numeric(TCGA_CDR.gbm$OS)

class(TCGA_CDR.gbm$OS.time)
sum(is.na(TCGA_CDR.gbm$OS.time))
#TCGA_CDR.gbm[is.na(TCGA_CDR.gbm$OS.time),]
sum(is.na(TCGA_CDR.gbm$OS))

s.gbm <- Surv(TCGA_CDR.gbm$OS.time,TCGA_CDR.gbm$OS)
s.gbm
class(s.gbm)
range(TCGA_CDR.gbm$OS.time)
range(TCGA_CDR.gbm$OS)
sfit.gbm <- survfit(Surv(OS.time, OS)~1, data=TCGA_CDR.gbm)
summary(sfit.gbm,  times=seq(0, 3900, 300))
ggsurvplot(sfit.gbm)


# for mix

TCGA_CDR.mix <- subset(TCGA_CDR, 
                         TCGA_CDR$type == 'BRCA' | 
                         TCGA_CDR$type == 'GBM'  |
                         TCGA_CDR$type == 'LUAD'  |
                         TCGA_CDR$type == 'OV'
                         )

unique(TCGA_CDR.mix$OS)
nrow(TCGA_CDR.mix[TCGA_CDR.mix$OS.time == '#N/A' | TCGA_CDR.mix$OS == '#N/A',])

TCGA_CDR.mix <- TCGA_CDR.mix[!TCGA_CDR.mix$OS.time == '#N/A',]
TCGA_CDR.mix <- TCGA_CDR.mix[!TCGA_CDR.mix$OS == '#N/A',]
TCGA_CDR.mix$OS.time <- as.numeric(as.character(TCGA_CDR.mix$OS.time))
TCGA_CDR.mix$OS.time <- round(TCGA_CDR.mix$OS.time/365.5, 2)

TCGA_CDR.mix$OS <- as.numeric(TCGA_CDR.mix$OS)

class(TCGA_CDR.mix$OS.time)
sum(is.na(TCGA_CDR.mix$OS.time))
#TCGA_CDR.mix[is.na(TCGA_CDR.mix$OS.time),]
sum(is.na(TCGA_CDR.mix$OS))

s.mix <- Surv(TCGA_CDR.mix$OS.time,TCGA_CDR.mix$OS)
s.mix
class(s.mix)
range(TCGA_CDR.mix$OS.time)
range(TCGA_CDR.mix$OS)
sfit.mix <- survfit(Surv(OS.time, OS)~type, data=TCGA_CDR.mix)
summary(sfit.mix,  times=seq(0, 24, 2))
ggsurvplot(sfit.mix,conf.int=FALSE, pval=FALSE, risk.table=TRUE,
           legend.labs=c("BRCA", 'GBM', 'LUAD', 'OV'), legend.title="Cancer",  
           #palette=c("dodgerblue2", "orchid2"),
           xlab = "Time in years",   # customize X axis label.
           break.time.by = 2,
           title="Kaplan-Meier Curve for BRCA, GBM, LUAD and OV Cancer Survival", 
           risk.table.height=.20)




# For GBM cnn data

CNN.gbm <- gbm.cdnn.samples
unique(CNN.gbm$`os event type (0 = censored)`)
unique(CNN.gbm$`os time to event (months)`)
#N/A

colnames(CNN.gbm)[3] <- 'Subtype'
colnames(CNN.gbm)[14] <- 'OS.time'
colnames(CNN.gbm)[15] <- 'OS'


CNN.gbm$OS.time <- as.numeric(as.character(CNN.gbm$OS.time))
CNN.gbm$OS <- as.numeric(CNN.gbm$OS)

class(CNN.gbm$OS.time)
sum(is.na(CNN.gbm$OS.time))
#CNN.gbm[is.na(CNN.gbm$OS.time),]
sum(is.na(CNN.gbm$OS))

s.gbm <- Surv(CNN.gbm$OS.time,CNN.gbm$OS)
s.gbm
class(s.gbm)
range(CNN.gbm$OS.time)
range(CNN.gbm$OS)
sfit.gbm <- survfit(Surv(OS.time, OS)~treatment, data=CNN.gbm)
summary(sfit.gbm,  times=seq(0, 42, 3))
ggsurvplot(sfit.gbm, pval = TRUE)
ggsurvplot(sfit.gbm,conf.int=FALSE, pval=FALSE, risk.table=TRUE,
           legend.labs=c("Classical", 'Mesenchymal', 'Neural', 'Proneural'), legend.title="Subtype",  
           #palette=c("dodgerblue2", "orchid2"),
           xlab = "Time in months",   # customize X axis label.
           break.time.by = 3, 
           title="Kaplan-Meier Curve for GBM Cancer subtype Overall Survival ", 
           risk.table.height=.20)


CNN.gbm$Subtype_custom <- CNN.gbm$Subtype
CNN.gbm$Subtype_custom <- ifelse(CNN.gbm$Subtype_custom == 'Classical', 'Cohort','Population')

sfit.gbm2 <- survfit(Surv(OS.time, OS)~Subtype_custom, data=CNN.gbm)
summary(sfit.gbm2,  times=seq(0, 42, 3))
ggsurvplot(sfit.gbm2,conf.int=FALSE, pval=FALSE, risk.table=TRUE,
           legend.labs=c("Cohort Enriched Classical", 'Population'), legend.title="Selection Type",  
           palette=c("dodgerblue2", "orchid2"),
           xlab = "Time in months",   # customize X axis label.
           break.time.by = 3, 
           title="Kaplan-Meier Curve for GBM Cancer subtype Overall Survival (SEAS version)", 
           risk.table.height=.20)



# RTCGA

# library(RTCGAToolbox)
# ??RTCGAToolbox
# getFirehoseDatasets()
# getFirehoseAnalyzeDates(last=3)
# brcaData <- getFirehoseData(dataset="READ", runDate="20160128",
#                             forceDownload=TRUE, clinical=TRUE, Mutation=FALSE)
# 


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
gbm2018.mrna.df2 <- subset(gbm2018.mrna.df, select = !(names(gbm2018.mrna.df2) %in% s.del)) 
#gbm2018.samples.df$SAMPLE_ID





TCGA_CDR.brca2$Subtype <- brca.tcga.pancan$Subtype
TCGA_CDR.brca2$OS.time <- round(TCGA_CDR.brca2$OS.time/365.5, 2)


head(gbm2018.samples.df$PATIENT_ID,4)
head(gbm.tcga.cell2013$`Patient ID`,4)











