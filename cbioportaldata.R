library(cBioPortalData)
library(AnVIL)

(cbio <- cBioPortal())

sampleLists(cbio, "gbm_tcga_pan_can_atlas_2018")
samplesInSampleLists(cbio, "gbm_tcga_pan_can_atlas_2018_rna_seq_v2_mrna")

cbio.sample.df <- data.frame(
  getSampleInfo(cbio, studyId = "gbm_tcga_pan_can_atlas_2018",
                sampleListIds = "gbm_tcga_pan_can_atlas_2018_rna_seq_v2_mrna")
  
)

tags <- data.frame(tags(cbio))
