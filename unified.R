1644838815637:gbm.cdnn.samples <- fread(paste0(dataDir,'/gbm_cdnn_bmc/GBM_Datasets/1_unified.txt'),
                                        1644838815639:header = TRUE)
1644838819792:library(data.table)
1644838820019:library(umap)
1644838820201:library(Rtsne)
1644838820398:library(DESeq2)
1644838820689:library(ggplot2)
1644838821053:currentDir <- getwd()
1644838821240:dataDir <- paste0(currentDir,'/datasets')
1644838821636:resultDir <- paste0(currentDir,'/results/')
1644838822385:# gbm_cdnn_bmc @ bmc
  1644838822386:gbm.cdnn.samples <- fread(paste0(dataDir,'/gbm_cdnn_bmc/GBM_Datasets/1_unified.txt'),
                                          1644838822388:header = TRUE)
1644838831398:colnames(gbm.cdnn.samples) <- gbm.cdnn.samples[1,]
1644838842328:colnames(gbm.cdnn.samples) <- as.character(gbm.cdnn.samples[1,])
1644838844696:View(gbm.cdnn.samples)
1644838874682:gbm.cdnn.samples <- gbm.cdnn.samples[-1,]
1644838877189:gbm.cdnn.mrna <- gbm.cdnn.samples[,7:length(gbm.cdnn.samples)]
1644838902413:gbm.cdnn.samples <- gbm.cdnn.samples[,1:6]
1644838904026:View(gbm.cdnn.samples)
1644838914012:View(gbm.cdnn.mrna)
1644838942297:# gbm_cdnn_bmc @ bmc
  1644838942299:gbm.cdnn.samples <- fread(paste0(dataDir,'/gbm_cdnn_bmc/GBM_Datasets/1_unified.txt'),
                                          1644838942300:header = TRUE)
1644838943435:colnames(gbm.cdnn.samples) <- as.character(gbm.cdnn.samples[1,])
1644838943811:gbm.cdnn.samples <- gbm.cdnn.samples[-1,]
1644838944371:gbm.cdnn.mrna <- gbm.cdnn.samples[,17:length(gbm.cdnn.samples)]
1644838944851:gbm.cdnn.samples <- gbm.cdnn.samples[,1:16]
1644838946935:View(gbm.cdnn.samples)
1644838952728:View(gbm.cdnn.mrna)
1644839006860:gbm.cdnn.mrna.mat <- as.matrix(gbm.cdnn.mrna)
1644839018193:gbm2018.mrna.umap <- umap(t(gbm.cdnn.mrna.mat))
1644839040241:View(gbm.cdnn.mrna)
1644839080227:gbm.cdnn.mrna.mat <- as.numeric(gbm.cdnn.mrna)
1644839099914:gbm.cdnn.mrna.mat <- as.matrix(gbm.cdnn.mrna)
1644839100567:gbm2018.mrna.mat <- as.numeric(gbm2018.mrna.mat)
1644839109456:gbm.cdnn.mrna.mat <- as.numeric(gbm.cdnn.mrna.mat)
1644839115112:View(gbm.cdnn.mrna)
1644839130175:gbm2018.mrna.umap <- umap(t(gbm.cdnn.mrna.mat))
1644839140936:gbm2018.mrna.umap <- umap(gbm.cdnn.mrna.mat)
1644839168823:# gbm_cdnn_bmc @ bmc
  1644839168824:gbm.cdnn.samples <- fread(paste0(dataDir,'/gbm_cdnn_bmc/GBM_Datasets/1_unified.txt'),
                                          1644839168825:header = TRUE)
1644839169962:colnames(gbm.cdnn.samples) <- as.character(gbm.cdnn.samples[1,])
1644839170158:gbm.cdnn.samples <- gbm.cdnn.samples[-1,]
1644839170232:gbm.cdnn.mrna <- gbm.cdnn.samples[,17:length(gbm.cdnn.samples)]
1644839170309:gbm.cdnn.samples <- gbm.cdnn.samples[,1:16]
1644839190550:class(gbm.cdnn.mrna)
1644839218037:gbm.cdnn.mrna <- as.data.frame.numeric(gbm.cdnn.mrna)
1644839221890:class(gbm.cdnn.mrna)
1644839231068:gbm.cdnn.mrna.mat <- as.matrix(gbm.cdnn.mrna)
1644839239121:View(gbm.cdnn.mrna)
1644839254187:# gbm_cdnn_bmc @ bmc
  1644839254188:gbm.cdnn.samples <- fread(paste0(dataDir,'/gbm_cdnn_bmc/GBM_Datasets/1_unified.txt'),
                                          1644839254189:header = TRUE)
1644839255365:colnames(gbm.cdnn.samples) <- as.character(gbm.cdnn.samples[1,])
1644839255563:gbm.cdnn.samples <- gbm.cdnn.samples[-1,]
1644839255634:gbm.cdnn.mrna <- gbm.cdnn.samples[,17:length(gbm.cdnn.samples)]
1644839255708:gbm.cdnn.samples <- gbm.cdnn.samples[,1:16]
1644839257467:gbm.cdnn.mrna <- as.data.frame(gbm.cdnn.mrna)
1644839261473:gbm.cdnn.mrna.mat <- as.matrix(gbm.cdnn.mrna)
1644839269132:gbm2018.mrna.umap <- umap(gbm.cdnn.mrna.mat)
1644839284177:class(gbm.cdnn.mrna.mat)
1644839289991:class(gbm.cdnn.mrna.mat[1,1])
1644839336193:gbm.cdnn.mrna <- as.numeric(gbm.cdnn.mrna)
1644839341579:# gbm_cdnn_bmc @ bmc
  1644839341580:gbm.cdnn.samples <- fread(paste0(dataDir,'/gbm_cdnn_bmc/GBM_Datasets/1_unified.txt'),
                                          1644839341581:header = TRUE)
1644839342769:colnames(gbm.cdnn.samples) <- as.character(gbm.cdnn.samples[1,])
1644839342972:gbm.cdnn.samples <- gbm.cdnn.samples[-1,]
1644839343252:gbm.cdnn.mrna <- gbm.cdnn.samples[,17:length(gbm.cdnn.samples)]
1644839343332:gbm.cdnn.samples <- gbm.cdnn.samples[,1:16]
1644839343335:gbm.cdnn.mrna <- as.data.frame(gbm.cdnn.mrna)
1644839343488:gbm.cdnn.mrna <- as.numeric(gbm.cdnn.mrna)
1644839383219:# gbm_cdnn_bmc @ bmc
  1644839383220:gbm.cdnn.samples <- fread(paste0(dataDir,'/gbm_cdnn_bmc/GBM_Datasets/1_unified.txt'),
                                          1644839383222:header = TRUE)
1644839384394:colnames(gbm.cdnn.samples) <- as.character(gbm.cdnn.samples[1,])
1644839384578:gbm.cdnn.samples <- gbm.cdnn.samples[-1,]
1644839384652:gbm.cdnn.mrna <- gbm.cdnn.samples[,17:length(gbm.cdnn.samples)]
1644839385067:gbm.cdnn.samples <- gbm.cdnn.samples[,1:16]
1644839385640:gbm.cdnn.mrna <- data.matrix(gbm.cdnn.mrna)
1644839416018:# gbm_cdnn_bmc @ bmc
  1644839416019:gbm.cdnn.samples <- fread(paste0(dataDir,'/gbm_cdnn_bmc/GBM_Datasets/1_unified.txt'),
                                          1644839416020:header = TRUE)
1644839417239:colnames(gbm.cdnn.samples) <- as.character(gbm.cdnn.samples[1,])
1644839417438:gbm.cdnn.samples <- gbm.cdnn.samples[-1,]
1644839417512:gbm.cdnn.mrna <- gbm.cdnn.samples[,17:length(gbm.cdnn.samples)]
1644839417915:gbm.cdnn.samples <- gbm.cdnn.samples[,1:16]
1644839418010:gbm.cdnn.mrna.mat <- data.matrix(gbm.cdnn.mrna)
1644839438995:gbm2018.mrna.umap <- umap(gbm.cdnn.mrna.mat)
1644839446275:plot(gbm2018.mrna.umap$layout)
1644839468415:ggplot(
  1644839468416:data.frame(gbm2018.mrna.umap$layout),
  1644839468416:aes(
    1644839468417:x = X1,
    1644839468417:y = X2,
    1644839468418:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
    1644839468418:)
  1644839468419:) +
  1644839468419:geom_point()
1644839621050:gbm.cdnn.mrna.tsne <- Rtsne(gbm.cdnn.mrna.mat)
1644839625232:plot(gbm.cdnn.mrna.tsne$Y)
1644839626456:ggplot(
  1644839626457:data.frame(gbm.cdnn.mrna.tsne$Y),
  1644839626458:aes(
    1644839626459:x = X1,
    1644839626459:y = X2,
    1644839626460:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
    1644839626460:)
  1644839626461:) +
  1644839626461:geom_point()
1644839855901:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat, n_neighbors = 4, min_dist = 1, spread = 4, nn_method = nn, n_epochs = 20))
1644839860549:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat, n_neighbors = 4, min_dist = 1, spread = 4, nn_method = nn, n_epochs = 20)
1644839893062:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat, n_neighbors = 4, min_dist = 1, spread = 4, nn_method = gbm2018.mrna.umap$knn, n_epochs = 20)
1644839895616:plot(gbm.cdnn.mrna.umap$layout)
1644839896905:ggplot(
  1644839896907:data.frame(gbm.cdnn.mrna.umap$layout),
  1644839896908:aes(
    1644839896909:x = X1,
    1644839896909:y = X2,
    1644839896910:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
    1644839896911:)
  1644839896911:) +
  1644839896912:geom_point()
1644840128170:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat, n_neighbors = 4, learning_rate = 0.5, init = "random", n_epochs = 20)
1644840129832:plot(gbm.cdnn.mrna.umap$layout)
1644840130947:ggplot(
  1644840130948:data.frame(gbm.cdnn.mrna.umap$layout),
  1644840130949:aes(
    1644840130950:x = X1,
    1644840130951:y = X2,
    1644840130951:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
    1644840130952:)
  1644840130953:) +
  1644840130953:geom_point()
1644840145035:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat, n_neighbors = 4, learning_rate = 0.8, init = "random", n_epochs = 20)
1644840146819:plot(gbm.cdnn.mrna.umap$layout)
1644840147942:ggplot(
  1644840147943:data.frame(gbm.cdnn.mrna.umap$layout),
  1644840147944:aes(
    1644840147944:x = X1,
    1644840147945:y = X2,
    1644840147946:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
    1644840147946:)
  1644840147946:) +
  1644840147947:geom_point()
1644840291127:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat, n_neighbors = 4,
                                         1644840291128:metric = 'correlation',
                                         1644840291129:learning_rate = 0.8, init = "random", n_epochs = 20)
1644840314278:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat, n_neighbors = 4,
                                         1644840314279:metric = `'correlation'`,
                                         1644840314280:learning_rate = 0.8, init = "random", n_epochs = 20)
1644840327825:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat, n_neighbors = 4,
                                         1644840327997:metric = `correlation`,
                                         1644840327998:learning_rate = 0.8, init = "random", n_epochs = 20)
1644840423397:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat, n_neighbors = 4,
                                         1644840423398:metric = "correlation",
                                         1644840423399:learning_rate = 0.8, init = "random", n_epochs = 20)
1644840432244:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat, n_neighbors = 4,
                                         1644840432246:metric = "manhattan",
                                         1644840432247:learning_rate = 0.8, init = "random", n_epochs = 20)
1644840434839:plot(gbm.cdnn.mrna.umap$layout)
1644840435895:ggplot(
  1644840435896:data.frame(gbm.cdnn.mrna.umap$layout),
  1644840435896:aes(
    1644840435897:x = X1,
    1644840435898:y = X2,
    1644840435898:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
    1644840435899:)
  1644840435899:) +
  1644840435899:geom_point()
1644840479264:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat, n_neighbors = 4,
                                         1644840479265:metric = "cosine",
                                         1644840479266:learning_rate = 0.5, init = "random", n_epochs = 200)
1644840483028:#plot(gbm.cdnn.mrna.umap$layout)
  1644840483028:ggplot(
    1644840483029:data.frame(gbm.cdnn.mrna.umap$layout),
    1644840483030:aes(
      1644840483030:x = X1,
      1644840483031:y = X2,
      1644840483031:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644840483031:)
    1644840483032:) +
  1644840483032:geom_point()
1644840500702:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat, n_neighbors = 4,
                                         1644840500703:metric = "cosine",
                                         1644840500703:learning_rate = 0.5, init = "random", n_epochs = 100)
1644840502712:#plot(gbm.cdnn.mrna.umap$layout)
  1644840502713:ggplot(
    1644840502713:data.frame(gbm.cdnn.mrna.umap$layout),
    1644840502714:aes(
      1644840502714:x = X1,
      1644840502715:y = X2,
      1644840502716:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644840502716:)
    1644840502716:) +
  1644840502717:geom_point()
1644840549488:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat, n_neighbors = 4,
                                         1644840549488:metric = "cosine",
                                         1644840549488:learning_rate = 0.5, init = "random", n_epochs = 0)
1644840551056:#plot(gbm.cdnn.mrna.umap$layout)
  1644840551057:ggplot(
    1644840551058:data.frame(gbm.cdnn.mrna.umap$layout),
    1644840551059:aes(
      1644840551059:x = X1,
      1644840551059:y = X2,
      1644840551060:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644840551060:)
    1644840551061:) +
  1644840551061:geom_point()
1644840557578:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat, n_neighbors = 4,
                                         1644840557580:metric = "cosine",
                                         1644840557581:learning_rate = 0.5, init = "random", n_epochs = 500)
1644840559254:#plot(gbm.cdnn.mrna.umap$layout)
  1644840559254:ggplot(
    1644840559255:data.frame(gbm.cdnn.mrna.umap$layout),
    1644840559256:aes(
      1644840559256:x = X1,
      1644840559256:y = X2,
      1644840559257:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644840559257:)
    1644840559258:) +
  1644840559258:geom_point()
1644840573252:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat, n_neighbors = 4,
                                         1644840573254:metric = "cosine",
                                         1644840573255:learning_rate = 0.5, n_epochs = 500)
1644840574866:#plot(gbm.cdnn.mrna.umap$layout)
  1644840574867:ggplot(
    1644840574867:data.frame(gbm.cdnn.mrna.umap$layout),
    1644840574868:aes(
      1644840574868:x = X1,
      1644840574869:y = X2,
      1644840574869:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644840574870:)
    1644840574870:) +
  1644840574871:geom_point()
1644840587834:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat, n_neighbors = 4,
                                         1644840587836:#                           metric = "cosine",
                                           1644840587837:learning_rate = 0.5, n_epochs = 500)
1644840591623:#plot(gbm.cdnn.mrna.umap$layout)
  1644840591625:ggplot(
    1644840591626:data.frame(gbm.cdnn.mrna.umap$layout),
    1644840591626:aes(
      1644840591627:x = X1,
      1644840591627:y = X2,
      1644840591628:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644840591628:)
    1644840591629:) +
  1644840591629:geom_point()
1644840605962:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644840605964:#                           metric = "cosine",
                                           1644840605965:learning_rate = 0.5, n_epochs = 500)
1644840608282:#plot(gbm.cdnn.mrna.umap$layout)
  1644840608282:ggplot(
    1644840608283:data.frame(gbm.cdnn.mrna.umap$layout),
    1644840608283:aes(
      1644840608283:x = X1,
      1644840608284:y = X2,
      1644840608285:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644840608285:)
    1644840608285:) +
  1644840608286:geom_point()
1644840629702:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644840629703:#                            n_neighbors = 4,
                                           1644840629704:#                           metric = "cosine",
                                           1644840629705:#                           learning_rate = 0.5,
                                           1644840629706:n_epochs = 500)
1644840632766:#plot(gbm.cdnn.mrna.umap$layout)
  1644840632767:ggplot(
    1644840632768:data.frame(gbm.cdnn.mrna.umap$layout),
    1644840632768:aes(
      1644840632769:x = X1,
      1644840632769:y = X2,
      1644840632770:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644840632770:)
    1644840632771:) +
  1644840632771:geom_point()
1644840642280:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644840642281:#                            n_neighbors = 4,
                                           1644840642281:metric = "cosine",
                                         1644840642282:#                           learning_rate = 0.5,
                                           1644840642283:n_epochs = 500)
1644840645789:#plot(gbm.cdnn.mrna.umap$layout)
  1644840645790:ggplot(
    1644840645790:data.frame(gbm.cdnn.mrna.umap$layout),
    1644840645791:aes(
      1644840645791:x = X1,
      1644840645792:y = X2,
      1644840645792:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644840645793:)
    1644840645793:) +
  1644840645794:geom_point()
1644840657624:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644840657625:#                            n_neighbors = 4,
                                           1644840657626:metric = "manhattan",
                                         1644840657626:#                           learning_rate = 0.5,
                                           1644840657627:n_epochs = 500)
1644840661466:#plot(gbm.cdnn.mrna.umap$layout)
  1644840661467:ggplot(
    1644840661468:data.frame(gbm.cdnn.mrna.umap$layout),
    1644840661469:aes(
      1644840661470:x = X1,
      1644840661470:y = X2,
      1644840661471:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644840661471:)
    1644840661471:) +
  1644840661472:geom_point()
1644840670920:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644840670922:#                            n_neighbors = 4,
                                           1644840670923:metric = "manhattan",
                                         1644840670924:learning_rate = 0.2,
                                         1644840670924:n_epochs = 500)
1644840674713:#plot(gbm.cdnn.mrna.umap$layout)
  1644840674713:ggplot(
    1644840674714:data.frame(gbm.cdnn.mrna.umap$layout),
    1644840674714:aes(
      1644840674715:x = X1,
      1644840674715:y = X2,
      1644840674716:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644840674716:)
    1644840674716:) +
  1644840674717:geom_point()
1644840684934:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644840684936:#                            n_neighbors = 4,
                                           1644840684937:metric = "manhattan",
                                         1644840684937:learning_rate = 0.6,
                                         1644840684938:n_epochs = 500)
1644840688058:#plot(gbm.cdnn.mrna.umap$layout)
  1644840688059:ggplot(
    1644840688059:data.frame(gbm.cdnn.mrna.umap$layout),
    1644840688060:aes(
      1644840688060:x = X1,
      1644840688061:y = X2,
      1644840688061:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644840688062:)
    1644840688062:) +
  1644840688062:geom_point()
1644840704890:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644840704891:#                            n_neighbors = 4,
                                           1644840704892:metric = "manhattan",
                                         1644840704893:learning_rate = 0.6,
                                         1644840704894:n_epochs = 200)
1644840707753:#plot(gbm.cdnn.mrna.umap$layout)
  1644840707753:ggplot(
    1644840707754:data.frame(gbm.cdnn.mrna.umap$layout),
    1644840707754:aes(
      1644840707755:x = X1,
      1644840707755:y = X2,
      1644840707756:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644840707756:)
    1644840707757:) +
  1644840707757:geom_point()
1644840715441:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644840715443:#                            n_neighbors = 4,
                                           1644840715444:metric = "manhattan",
                                         1644840715444:learning_rate = 0.6,
                                         1644840715445:n_epochs = 50)
1644840718229:#plot(gbm.cdnn.mrna.umap$layout)
  1644840718229:ggplot(
    1644840718230:data.frame(gbm.cdnn.mrna.umap$layout),
    1644840718231:aes(
      1644840718232:x = X1,
      1644840718232:y = X2,
      1644840718233:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644840718234:)
    1644840718234:) +
  1644840718235:geom_point()
1644840725801:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644840725802:n_neighbors = 4,
                                         1644840725803:metric = "manhattan",
                                         1644840725804:learning_rate = 0.6,
                                         1644840725805:n_epochs = 50)
1644840728829:#plot(gbm.cdnn.mrna.umap$layout)
  1644840728830:ggplot(
    1644840728831:data.frame(gbm.cdnn.mrna.umap$layout),
    1644840728833:aes(
      1644840728833:x = X1,
      1644840728834:y = X2,
      1644840728834:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644840728835:)
    1644840728835:) +
  1644840728836:geom_point()
1644840737790:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644840737791:n_neighbors = 5,
                                         1644840737793:metric = "manhattan",
                                         1644840737794:learning_rate = 0.6,
                                         1644840737795:n_epochs = 50)
1644840740175:#plot(gbm.cdnn.mrna.umap$layout)
  1644840740177:ggplot(
    1644840740178:data.frame(gbm.cdnn.mrna.umap$layout),
    1644840740178:aes(
      1644840740179:x = X1,
      1644840740179:y = X2,
      1644840740180:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644840740180:)
    1644840740181:) +
  1644840740182:geom_point()
1644840766683:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644840766683:n_neighbors = 5,
                                         1644840766684:metric = "manhattan",
                                         1644840766685:#                           learning_rate = 0.6,
                                           1644840766686:n_epochs = 60)
1644840769235:#plot(gbm.cdnn.mrna.umap$layout)
  1644840769236:ggplot(
    1644840769237:data.frame(gbm.cdnn.mrna.umap$layout),
    1644840769238:aes(
      1644840769239:x = X1,
      1644840769239:y = X2,
      1644840769240:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644840769240:)
    1644840769241:) +
  1644840769241:geom_point()
1644840779264:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644840779265:n_neighbors = 5,
                                         1644840779266:metric = "manhattan",
                                         1644840779267:#                           learning_rate = 0.6,
                                           1644840779267:n_epochs = 30)
1644840782234:#plot(gbm.cdnn.mrna.umap$layout)
  1644840782235:ggplot(
    1644840782236:data.frame(gbm.cdnn.mrna.umap$layout),
    1644840782237:aes(
      1644840782238:x = X1,
      1644840782238:y = X2,
      1644840782239:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644840782239:)
    1644840782239:) +
  1644840782240:geom_point()
1644840837318:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644840837319:n_neighbors = 10,
                                         1644840837321:metric = "manhattan",
                                         1644840837322:#                           learning_rate = 0.6,
                                           1644840837323:n_epochs = 30)
1644840840323:#plot(gbm.cdnn.mrna.umap$layout)
  1644840840323:ggplot(
    1644840840324:data.frame(gbm.cdnn.mrna.umap$layout),
    1644840840325:aes(
      1644840840325:x = X1,
      1644840840326:y = X2,
      1644840840326:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644840840327:)
    1644840840327:) +
  1644840840328:geom_point()
1644840849598:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644840849599:n_neighbors = 20,
                                         1644840849601:metric = "manhattan",
                                         1644840849602:#                           learning_rate = 0.6,
                                           1644840849603:n_epochs = 30)
1644840851682:#plot(gbm.cdnn.mrna.umap$layout)
  1644840851683:ggplot(
    1644840851683:data.frame(gbm.cdnn.mrna.umap$layout),
    1644840851684:aes(
      1644840851684:x = X1,
      1644840851685:y = X2,
      1644840851685:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644840851686:)
    1644840851686:) +
  1644840851687:geom_point()
1644840873577:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644840873677:n_neighbors = 30,
                                         1644840873677:metric = "manhattan",
                                         1644840873678:#                           learning_rate = 0.6,
                                           1644840873678:n_epochs = 50)
1644840875924:#plot(gbm.cdnn.mrna.umap$layout)
  1644840875924:ggplot(
    1644840875925:data.frame(gbm.cdnn.mrna.umap$layout),
    1644840875926:aes(
      1644840875926:x = X1,
      1644840875927:y = X2,
      1644840875927:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644840875928:)
    1644840875928:) +
  1644840875929:geom_point()
1644840882266:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644840882267:n_neighbors = 30,
                                         1644840882267:metric = "manhattan",
                                         1644840882268:learning_rate = 0.6,
                                         1644840882268:n_epochs = 50)
1644840885411:#plot(gbm.cdnn.mrna.umap$layout)
  1644840885412:ggplot(
    1644840885412:data.frame(gbm.cdnn.mrna.umap$layout),
    1644840885413:aes(
      1644840885413:x = X1,
      1644840885414:y = X2,
      1644840885414:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644840885415:)
    1644840885415:) +
  1644840885416:geom_point()
1644840899081:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644840899083:n_neighbors = 30,
                                         1644840899085:#               metric = "manhattan",
                                           1644840899086:#                learning_rate = 0.6,
                                           1644840899086:n_epochs = 50)
1644840902131:#plot(gbm.cdnn.mrna.umap$layout)
  1644840902132:ggplot(
    1644840902133:data.frame(gbm.cdnn.mrna.umap$layout),
    1644840902134:aes(
      1644840902135:x = X1,
      1644840902135:y = X2,
      1644840902136:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644840902136:)
    1644840902137:) +
  1644840902137:geom_point()
1644840912186:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644840912188:n_neighbors = 3,
                                         1644840912189:#               metric = "manhattan",
                                           1644840912190:#                learning_rate = 0.6,
                                           1644840912190:n_epochs = 50)
1644840914706:#plot(gbm.cdnn.mrna.umap$layout)
  1644840914708:ggplot(
    1644840914710:data.frame(gbm.cdnn.mrna.umap$layout),
    1644840914711:aes(
      1644840914712:x = X1,
      1644840914714:y = X2,
      1644840914714:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644840914714:)
    1644840914715:) +
  1644840914716:geom_point()
1644840924502:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644840924504:n_neighbors = 6,
                                         1644840924506:#               metric = "manhattan",
                                           1644840924507:#                learning_rate = 0.6,
                                           1644840924508:n_epochs = 50)
1644840926425:#plot(gbm.cdnn.mrna.umap$layout)
  1644840926426:ggplot(
    1644840926427:data.frame(gbm.cdnn.mrna.umap$layout),
    1644840926427:aes(
      1644840926428:x = X1,
      1644840926428:y = X2,
      1644840926429:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644840926429:)
    1644840926430:) +
  1644840926430:geom_point()
1644840937803:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644840937805:n_neighbors = 7,
                                         1644840937806:#               metric = "manhattan",
                                           1644840937807:#                learning_rate = 0.6,
                                           1644840937807:n_epochs = 50)
1644840940491:#plot(gbm.cdnn.mrna.umap$layout)
  1644840940492:ggplot(
    1644840940493:data.frame(gbm.cdnn.mrna.umap$layout),
    1644840940494:aes(
      1644840940495:x = X1,
      1644840940495:y = X2,
      1644840940496:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644840940496:)
    1644840940497:) +
  1644840940497:geom_point()
1644840947952:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644840947954:n_neighbors = 7,
                                         1644840947955:#               metric = "manhattan",
                                           1644840947957:#                learning_rate = 0.6,
                                           1644840947958:n_epochs = 20)
1644840949380:#plot(gbm.cdnn.mrna.umap$layout)
  1644840949381:ggplot(
    1644840949382:data.frame(gbm.cdnn.mrna.umap$layout),
    1644840949383:aes(
      1644840949384:x = X1,
      1644840949385:y = X2,
      1644840949386:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644840949386:)
    1644840949387:) +
  1644840949387:geom_point()
1644840955332:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644840955333:n_neighbors = 7,
                                         1644840955334:#               metric = "manhattan",
                                           1644840955335:#                learning_rate = 0.6,
                                           1644840955336:n_epochs = 200)
1644840957262:#plot(gbm.cdnn.mrna.umap$layout)
  1644840957263:ggplot(
    1644840957264:data.frame(gbm.cdnn.mrna.umap$layout),
    1644840957265:aes(
      1644840957265:x = X1,
      1644840957266:y = X2,
      1644840957266:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644840957266:)
    1644840957267:) +
  1644840957267:geom_point()
1644840966336:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644840966337:n_neighbors = 8,
                                         1644840966338:#               metric = "manhattan",
                                           1644840966338:#                learning_rate = 0.6,
                                           1644840966339:n_epochs = 200)
1644840969134:#plot(gbm.cdnn.mrna.umap$layout)
  1644840969134:ggplot(
    1644840969135:data.frame(gbm.cdnn.mrna.umap$layout),
    1644840969135:aes(
      1644840969136:x = X1,
      1644840969136:y = X2,
      1644840969137:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644840969137:)
    1644840969138:) +
  1644840969138:geom_point()
1644840982708:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644840982709:n_neighbors = 9,
                                         1644840982710:#               metric = "manhattan",
                                           1644840982710:#                learning_rate = 0.6,
                                           1644840982711:n_epochs = 200)
1644840984627:#plot(gbm.cdnn.mrna.umap$layout)
  1644840984628:ggplot(
    1644840984628:data.frame(gbm.cdnn.mrna.umap$layout),
    1644840984629:aes(
      1644840984629:x = X1,
      1644840984630:y = X2,
      1644840984630:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644840984631:)
    1644840984631:) +
  1644840984631:geom_point()
1644841022945:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644841022946:n_neighbors = 9,
                                         1644841022947:#               metric = "manhattan",
                                           1644841022947:#                learning_rate = 0.6,
                                           1644841022948:#n_epochs = 200
                                           1644841022948:)
1644841025207:#plot(gbm.cdnn.mrna.umap$layout)
  1644841025208:ggplot(
    1644841025208:data.frame(gbm.cdnn.mrna.umap$layout),
    1644841025209:aes(
      1644841025210:x = X1,
      1644841025210:y = X2,
      1644841025211:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644841025211:)
    1644841025211:) +
  1644841025212:geom_point()
1644841079362:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644841079363:n_neighbors = 9,
                                         1644841079364:#               metric = "manhattan",
                                           1644841079365:#                learning_rate = 0.6,
                                           1644841079365:scale = 'z'
                                         1644841079366:#n_epochs = 200
                                           1644841079367:)
1644841082725:#plot(gbm.cdnn.mrna.umap$layout)
  1644841082727:ggplot(
    1644841082728:data.frame(gbm.cdnn.mrna.umap$layout),
    1644841082729:aes(
      1644841082729:x = X1,
      1644841082730:y = X2,
      1644841082730:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644841082730:)
    1644841082731:) +
  1644841082731:geom_point()
1644841091201:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644841091202:#                            n_neighbors = 9,
                                           1644841091204:#               metric = "manhattan",
                                           1644841091204:#                learning_rate = 0.6,
                                           1644841091205:scale = 'z'
                                         1644841091205:#n_epochs = 200
                                           1644841091206:)
1644841092673:#plot(gbm.cdnn.mrna.umap$layout)
  1644841092674:ggplot(
    1644841092674:data.frame(gbm.cdnn.mrna.umap$layout),
    1644841092675:aes(
      1644841092676:x = X1,
      1644841092676:y = X2,
      1644841092676:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644841092677:)
    1644841092677:) +
  1644841092678:geom_point()
1644841114942:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644841114944:n_neighbors = 20,
                                         1644841114945:#               metric = "manhattan",
                                           1644841114945:#                learning_rate = 0.6,
                                           1644841114946:scale = 'z'
                                         1644841114947:#n_epochs = 200
                                           1644841114947:)
1644841116569:#plot(gbm.cdnn.mrna.umap$layout)
  1644841116569:ggplot(
    1644841116570:data.frame(gbm.cdnn.mrna.umap$layout),
    1644841116570:aes(
      1644841116571:x = X1,
      1644841116571:y = X2,
      1644841116572:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644841116572:)
    1644841116572:) +
  1644841116573:geom_point()
1644841128279:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644841128281:n_neighbors = 25,
                                         1644841128282:#               metric = "manhattan",
                                           1644841128282:#                learning_rate = 0.6,
                                           1644841128283:scale = 'z'
                                         1644841128283:#n_epochs = 200
                                           1644841128284:)
1644841130398:#plot(gbm.cdnn.mrna.umap$layout)
  1644841130399:ggplot(
    1644841130401:data.frame(gbm.cdnn.mrna.umap$layout),
    1644841130402:aes(
      1644841130403:x = X1,
      1644841130403:y = X2,
      1644841130404:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644841130405:)
    1644841130405:) +
  1644841130406:geom_point()
1644841143301:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644841143302:n_neighbors = 25,
                                         1644841143304:#               metric = "manhattan",
                                           1644841143306:#                learning_rate = 0.6,
                                           1644841143307:#           scale = 'z'
                                           1644841143308:#n_epochs = 200
                                           1644841143308:)
1644841145073:#plot(gbm.cdnn.mrna.umap$layout)
  1644841145074:ggplot(
    1644841145074:data.frame(gbm.cdnn.mrna.umap$layout),
    1644841145075:aes(
      1644841145075:x = X1,
      1644841145076:y = X2,
      1644841145076:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644841145076:)
    1644841145077:) +
  1644841145077:geom_point()
1644841154083:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644841154084:n_neighbors = 25,
                                         1644841154086:metric = "manhattan",
                                         1644841154086:#                learning_rate = 0.6,
                                           1644841154087:#n_epochs = 200
                                           1644841154087:)
1644841156819:#plot(gbm.cdnn.mrna.umap$layout)
  1644841156820:ggplot(
    1644841156820:data.frame(gbm.cdnn.mrna.umap$layout),
    1644841156820:aes(
      1644841156821:x = X1,
      1644841156821:y = X2,
      1644841156822:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644841156822:)
    1644841156823:) +
  1644841156823:geom_point()
1644841157337:gbm.cdnn.mrna.tsne <- Rtsne(gbm.cdnn.mrna.mat)
1644841164495:ggplot(
  1644841164496:data.frame(gbm.cdnn.mrna.tsne$Y),
  1644841164497:aes(
    1644841164497:x = X1,
    1644841164498:y = X2,
    1644841164498:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
    1644841164499:)
  1644841164499:) +
  1644841164500:geom_point()
1644841299753:for(n in 1:200:10){
  1644841299754:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                           1644841299755:n_neighbors = n,
                                           1644841299756:metric = "manhattan",
                                           1644841299757:#                learning_rate = 0.6,
                                             1644841299757:#n_epochs = 200
                                             1644841299758:)
  1644841299759:#plot(gbm.cdnn.mrna.umap$layout)
    1644841299760:ggplot(
      1644841299761:data.frame(gbm.cdnn.mrna.umap$layout),
      1644841299761:aes(
        1644841299762:x = n,
        1644841299763:y = X2,
        1644841299764:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
        1644841299765:)
      1644841299765:) +
    1644841299766:geom_point()
  1644841299766:}
1644841322197:1:200:10
1644841340856:1:10:200
1644841343688:for(n in 1:10:200){
  1644841343689:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                           1644841343689:n_neighbors = n,
                                           1644841343690:metric = "manhattan",
                                           1644841343691:#                learning_rate = 0.6,
                                             1644841343692:#n_epochs = 200
                                             1644841343692:)
  1644841343693:#plot(gbm.cdnn.mrna.umap$layout)
    1644841343693:ggplot(
      1644841343694:data.frame(gbm.cdnn.mrna.umap$layout),
      1644841343694:aes(
        1644841343694:x = n,
        1644841343695:y = X2,
        1644841343695:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
        1644841343696:)
      1644841343697:) +
    1644841343698:geom_point()
  1644841343700:}
1644841354069:for(n in 2:8:200){
  1644841354070:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                           1644841354070:n_neighbors = n,
                                           1644841354071:metric = "manhattan",
                                           1644841354072:#                learning_rate = 0.6,
                                             1644841354072:#n_epochs = 200
                                             1644841354073:)
  1644841354073:#plot(gbm.cdnn.mrna.umap$layout)
    1644841354074:ggplot(
      1644841354074:data.frame(gbm.cdnn.mrna.umap$layout),
      1644841354075:aes(
        1644841354075:x = n,
        1644841354076:y = X2,
        1644841354076:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
        1644841354077:)
      1644841354077:) +
    1644841354078:geom_point()
  1644841354079:}
1644841380702:for(n in 2:8:80){
  1644841380703:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                           1644841380704:n_neighbors = n,
                                           1644841380705:metric = "manhattan",
                                           1644841380705:#                learning_rate = 0.6,
                                             1644841380706:#n_epochs = 200
                                             1644841380706:)
  1644841380707:#plot(gbm.cdnn.mrna.umap$layout)
    1644841380707:ggplot(
      1644841380708:data.frame(gbm.cdnn.mrna.umap$layout),
      1644841380708:aes(
        1644841380709:x = n,
        1644841380709:y = X2,
        1644841380710:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
        1644841380710:)
      1644841380711:) +
    1644841380711:geom_point()
  1644841380712:}
1644841492738:for(n in 2:40:160){
  1644841492739:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                           1644841492739:n_neighbors = n,
                                           1644841492740:metric = "manhattan",
                                           1644841492741:#                learning_rate = 0.6,
                                             1644841492741:#n_epochs = 200
                                             1644841492742:)
  1644841492742:#plot(gbm.cdnn.mrna.umap$layout)
    1644841492743:ggplot(
      1644841492743:data.frame(gbm.cdnn.mrna.umap$layout),
      1644841492744:aes(
        1644841492744:x = n,
        1644841492745:y = X2,
        1644841492745:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
        1644841492746:)
      1644841492746:) +
    1644841492747:geom_point()
  1644841492747:}
1644841530959:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644841530961:n_neighbors = 40,
                                         1644841530962:metric = "manhattan",
                                         1644841530964:#                learning_rate = 0.6,
                                           1644841530964:#n_epochs = 200
                                           1644841530965:)
1644841533881:#plot(gbm.cdnn.mrna.umap$layout)
  1644841533882:ggplot(
    1644841533882:data.frame(gbm.cdnn.mrna.umap$layout),
    1644841533882:aes(
      1644841533883:x = x1,
      1644841533883:y = X2,
      1644841533884:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644841533885:)
    1644841533885:) +
  1644841533885:geom_point()
1644841546175:#plot(gbm.cdnn.mrna.umap$layout)
  1644841546176:ggplot(
    1644841546177:data.frame(gbm.cdnn.mrna.umap$layout),
    1644841546178:aes(
      1644841546179:x = X1,
      1644841546180:y = X2,
      1644841546180:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644841546181:)
    1644841546181:) +
  1644841546182:geom_point()
1644841553597:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644841553598:n_neighbors = 50,
                                         1644841553600:metric = "manhattan",
                                         1644841553601:#                learning_rate = 0.6,
                                           1644841553602:#n_epochs = 200
                                           1644841553603:)
1644841556580:#plot(gbm.cdnn.mrna.umap$layout)
  1644841556580:ggplot(
    1644841556581:data.frame(gbm.cdnn.mrna.umap$layout),
    1644841556581:aes(
      1644841556582:x = X1,
      1644841556582:y = X2,
      1644841556583:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644841556583:)
    1644841556584:) +
  1644841556584:geom_point()
1644841568445:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644841568446:n_neighbors = 20,
                                         1644841568446:metric = "manhattan",
                                         1644841568447:#                learning_rate = 0.6,
                                           1644841568448:#n_epochs = 200
                                           1644841568449:)
1644841572214:#plot(gbm.cdnn.mrna.umap$layout)
  1644841572216:ggplot(
    1644841572217:data.frame(gbm.cdnn.mrna.umap$layout),
    1644841572218:aes(
      1644841572219:x = X1,
      1644841572219:y = X2,
      1644841572220:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644841572220:)
    1644841572220:) +
  1644841572221:geom_point()
1644841582736:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644841582738:n_neighbors = 50,
                                         1644841582739:metric = "manhattan",
                                         1644841582740:#                learning_rate = 0.6,
                                           1644841582741:#n_epochs = 200
                                           1644841582741:)
1644841585732:#plot(gbm.cdnn.mrna.umap$layout)
  1644841585732:ggplot(
    1644841585733:data.frame(gbm.cdnn.mrna.umap$layout),
    1644841585734:aes(
      1644841585734:x = X1,
      1644841585735:y = X2,
      1644841585735:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644841585736:)
    1644841585736:) +
  1644841585736:geom_point()
1644841602561:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644841602562:n_neighbors = 35,
                                         1644841602563:metric = "manhattan",
                                         1644841602564:#                learning_rate = 0.6,
                                           1644841602564:#n_epochs = 200
                                           1644841602565:)
1644841605422:#plot(gbm.cdnn.mrna.umap$layout)
  1644841605422:ggplot(
    1644841605423:data.frame(gbm.cdnn.mrna.umap$layout),
    1644841605423:aes(
      1644841605424:x = X1,
      1644841605424:y = X2,
      1644841605425:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644841605425:)
    1644841605426:) +
  1644841605426:geom_point()
1644841631589:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644841631591:n_neighbors = 35,
                                         1644841631592:#                           metric = "manhattan",
                                           1644841631593:#                learning_rate = 0.6,
                                           1644841631594:#n_epochs = 200
                                           1644841631594:)
1644841633903:#plot(gbm.cdnn.mrna.umap$layout)
  1644841633903:ggplot(
    1644841633904:data.frame(gbm.cdnn.mrna.umap$layout),
    1644841633904:aes(
      1644841633905:x = X1,
      1644841633905:y = X2,
      1644841633906:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644841633906:)
    1644841633907:) +
  1644841633907:geom_point()
1644841645537:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644841645539:n_neighbors = 25,
                                         1644841645540:#                           metric = "manhattan",
                                           1644841645541:#                learning_rate = 0.6,
                                           1644841645542:#n_epochs = 200
                                           1644841645543:)
1644841648191:#plot(gbm.cdnn.mrna.umap$layout)
  1644841648193:ggplot(
    1644841648194:data.frame(gbm.cdnn.mrna.umap$layout),
    1644841648196:aes(
      1644841648197:x = X1,
      1644841648197:y = X2,
      1644841648198:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644841648199:)
    1644841648199:) +
  1644841648200:geom_point()
1644841659864:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644841659865:n_neighbors = 15,
                                         1644841659866:#                           metric = "manhattan",
                                           1644841659867:#                learning_rate = 0.6,
                                           1644841659867:#n_epochs = 200
                                           1644841659868:)
1644841662165:#plot(gbm.cdnn.mrna.umap$layout)
  1644841662166:ggplot(
    1644841662166:data.frame(gbm.cdnn.mrna.umap$layout),
    1644841662167:aes(
      1644841662167:x = X1,
      1644841662168:y = X2,
      1644841662168:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644841662169:)
    1644841662169:) +
  1644841662170:geom_point()
1644841671051:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644841671052:n_neighbors = 20,
                                         1644841671053:#                           metric = "manhattan",
                                           1644841671054:#                learning_rate = 0.6,
                                           1644841671054:#n_epochs = 200
                                           1644841671055:)
1644841673233:#plot(gbm.cdnn.mrna.umap$layout)
  1644841673234:ggplot(
    1644841673234:data.frame(gbm.cdnn.mrna.umap$layout),
    1644841673235:aes(
      1644841673235:x = X1,
      1644841673236:y = X2,
      1644841673237:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644841673237:)
    1644841673238:) +
  1644841673238:geom_point()
1644841741318:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644841741319:n_neighbors = 20,
                                         1644841741320:min_dist = 0.4
                                         1644841741320:#                           metric = "manhattan",
                                           1644841741321:#                learning_rate = 0.6,
                                           1644841741321:#n_epochs = 200
                                           1644841741322:)
1644841743046:#plot(gbm.cdnn.mrna.umap$layout)
  1644841743047:ggplot(
    1644841743048:data.frame(gbm.cdnn.mrna.umap$layout),
    1644841743048:aes(
      1644841743049:x = X1,
      1644841743049:y = X2,
      1644841743050:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644841743051:)
    1644841743051:) +
  1644841743051:geom_point()
1644841749449:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644841749451:n_neighbors = 20,
                                         1644841749452:min_dist = 0.9
                                         1644841749453:#                           metric = "manhattan",
                                           1644841749454:#                learning_rate = 0.6,
                                           1644841749454:#n_epochs = 200
                                           1644841749455:)
1644841750975:#plot(gbm.cdnn.mrna.umap$layout)
  1644841750976:ggplot(
    1644841750976:data.frame(gbm.cdnn.mrna.umap$layout),
    1644841750977:aes(
      1644841750977:x = X1,
      1644841750978:y = X2,
      1644841750978:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644841750979:)
    1644841750980:) +
  1644841750980:geom_point()
1644841757139:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644841757140:n_neighbors = 20,
                                         1644841757141:min_dist = 1.9
                                         1644841757142:#                           metric = "manhattan",
                                           1644841757143:#                learning_rate = 0.6,
                                           1644841757143:#n_epochs = 200
                                           1644841757144:)
1644841767400:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644841767402:n_neighbors = 20,
                                         1644841767403:min_dist = 0.98
                                         1644841767404:#                           metric = "manhattan",
                                           1644841767404:#                learning_rate = 0.6,
                                           1644841767405:#n_epochs = 200
                                           1644841767406:)
1644841770240:#plot(gbm.cdnn.mrna.umap$layout)
  1644841770241:ggplot(
    1644841770242:data.frame(gbm.cdnn.mrna.umap$layout),
    1644841770243:aes(
      1644841770243:x = X1,
      1644841770244:y = X2,
      1644841770244:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644841770245:)
    1644841770245:) +
  1644841770246:geom_point()
1644841794415:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644841794417:n_neighbors = 20,
                                         1644841794418:spread = 0.7,
                                         1644841794418:min_dist = 0.98
                                         1644841794419:#                           metric = "manhattan",
                                           1644841794419:#                learning_rate = 0.6,
                                           1644841794420:#n_epochs = 200
                                           1644841794420:)
1644841810265:#plot(gbm.cdnn.mrna.umap$layout)
  1644841810266:ggplot(
    1644841810268:data.frame(gbm.cdnn.mrna.umap$layout),
    1644841810269:aes(
      1644841810270:x = X1,
      1644841810271:y = X2,
      1644841810271:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644841810272:)
    1644841810273:) +
  1644841810273:geom_point()
1644841825147:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644841825148:n_neighbors = 20,
                                         1644841825149:spread = 0.8,
                                         1644841825150:min_dist = 0.6
                                         1644841825150:#                           metric = "manhattan",
                                           1644841825151:#                learning_rate = 0.6,
                                           1644841825151:#n_epochs = 200
                                           1644841825152:)
1644841826735:#plot(gbm.cdnn.mrna.umap$layout)
  1644841826736:ggplot(
    1644841826737:data.frame(gbm.cdnn.mrna.umap$layout),
    1644841826738:aes(
      1644841826739:x = X1,
      1644841826739:y = X2,
      1644841826740:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644841826741:)
    1644841826742:) +
  1644841826742:geom_point()
1644841834901:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644841834901:n_neighbors = 20,
                                         1644841834902:spread = 0.8,
                                         1644841834903:min_dist = 0.4
                                         1644841834903:#                           metric = "manhattan",
                                           1644841834904:#                learning_rate = 0.6,
                                           1644841834904:#n_epochs = 200
                                           1644841834905:)
1644841837001:#plot(gbm.cdnn.mrna.umap$layout)
  1644841837002:ggplot(
    1644841837003:data.frame(gbm.cdnn.mrna.umap$layout),
    1644841837004:aes(
      1644841837004:x = X1,
      1644841837005:y = X2,
      1644841837005:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644841837006:)
    1644841837006:) +
  1644841837007:geom_point()
1644841848070:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644841848072:n_neighbors = 20,
                                         1644841848073:spread = 0.9,
                                         1644841848075:min_dist = 0.4
                                         1644841848076:#                           metric = "manhattan",
                                           1644841848077:#                learning_rate = 0.6,
                                           1644841848077:#n_epochs = 200
                                           1644841848078:)
1644841850117:#plot(gbm.cdnn.mrna.umap$layout)
  1644841850119:ggplot(
    1644841850120:data.frame(gbm.cdnn.mrna.umap$layout),
    1644841850121:aes(
      1644841850121:x = X1,
      1644841850122:y = X2,
      1644841850122:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644841850123:)
    1644841850123:) +
  1644841850124:geom_point()
1644841858725:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644841858727:n_neighbors = 20,
                                         1644841858729:spread = 0.9,
                                         1644841858730:min_dist = 0.2
                                         1644841858731:#                           metric = "manhattan",
                                           1644841858731:#                learning_rate = 0.6,
                                           1644841858732:#n_epochs = 200
                                           1644841858732:)
1644841860851:#plot(gbm.cdnn.mrna.umap$layout)
  1644841860853:ggplot(
    1644841860854:data.frame(gbm.cdnn.mrna.umap$layout),
    1644841860854:aes(
      1644841860855:x = X1,
      1644841860855:y = X2,
      1644841860856:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644841860856:)
    1644841860857:) +
  1644841860857:geom_point()
1644841874879:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644841874881:n_neighbors = 20,
                                         1644841874882:# spread = 0.9,
                                           1644841874883:#  min_dist = 0.2
                                           1644841874883:#                           metric = "manhattan",
                                           1644841874884:#                learning_rate = 0.6,
                                           1644841874884:#n_epochs = 200
                                           1644841874885:)
1644841878248:#plot(gbm.cdnn.mrna.umap$layout)
  1644841878250:ggplot(
    1644841878251:data.frame(gbm.cdnn.mrna.umap$layout),
    1644841878252:aes(
      1644841878253:x = X1,
      1644841878253:y = X2,
      1644841878254:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644841878255:)
    1644841878255:) +
  1644841878256:geom_point()
1644841884742:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644841884744:n_neighbors = 20
                                         1644841884746:# spread = 0.9,
                                           1644841884747:#  min_dist = 0.2
                                           1644841884748:#                           metric = "manhattan",
                                           1644841884748:#                learning_rate = 0.6,
                                           1644841884749:#n_epochs = 200
                                           1644841884750:)
1644841886896:#plot(gbm.cdnn.mrna.umap$layout)
  1644841886897:ggplot(
    1644841886899:data.frame(gbm.cdnn.mrna.umap$layout),
    1644841886899:aes(
      1644841886900:x = X1,
      1644841886901:y = X2,
      1644841886902:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644841886903:)
    1644841886903:) +
  1644841886904:geom_point()
1644841894226:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644841894227:n_neighbors = 22
                                         1644841894227:# spread = 0.9,
                                           1644841894228:#  min_dist = 0.2
                                           1644841894229:#                           metric = "manhattan",
                                           1644841894229:#                learning_rate = 0.6,
                                           1644841894230:#n_epochs = 200
                                           1644841894230:)
1644841896812:#plot(gbm.cdnn.mrna.umap$layout)
  1644841896814:ggplot(
    1644841896815:data.frame(gbm.cdnn.mrna.umap$layout),
    1644841896816:aes(
      1644841896816:x = X1,
      1644841896817:y = X2,
      1644841896817:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644841896818:)
    1644841896819:) +
  1644841896819:geom_point()
1644841909980:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644841909982:n_neighbors = 18
                                         1644841909983:# spread = 0.9,
                                           1644841909984:#  min_dist = 0.2
                                           1644841909985:#                           metric = "manhattan",
                                           1644841909986:#                learning_rate = 0.6,
                                           1644841909987:#n_epochs = 200
                                           1644841909988:)
1644841911624:#plot(gbm.cdnn.mrna.umap$layout)
  1644841911625:ggplot(
    1644841911625:data.frame(gbm.cdnn.mrna.umap$layout),
    1644841911626:aes(
      1644841911626:x = X1,
      1644841911627:y = X2,
      1644841911627:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644841911628:)
    1644841911628:) +
  1644841911629:geom_point()
1644841922991:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644841922991:n_neighbors = 16
                                         1644841922992:# spread = 0.9,
                                           1644841922993:#  min_dist = 0.2
                                           1644841922994:#                           metric = "manhattan",
                                           1644841922994:#                learning_rate = 0.6,
                                           1644841922995:#n_epochs = 200
                                           1644841922996:)
1644841925182:#plot(gbm.cdnn.mrna.umap$layout)
  1644841925183:ggplot(
    1644841925184:data.frame(gbm.cdnn.mrna.umap$layout),
    1644841925185:aes(
      1644841925185:x = X1,
      1644841925186:y = X2,
      1644841925187:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644841925187:)
    1644841925188:) +
  1644841925188:geom_point()
1644841934071:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644841934072:n_neighbors = 12
                                         1644841934073:# spread = 0.9,
                                           1644841934073:#  min_dist = 0.2
                                           1644841934074:#                           metric = "manhattan",
                                           1644841934074:#                learning_rate = 0.6,
                                           1644841934075:#n_epochs = 200
                                           1644841934075:)
1644841936646:#plot(gbm.cdnn.mrna.umap$layout)
  1644841936647:ggplot(
    1644841936649:data.frame(gbm.cdnn.mrna.umap$layout),
    1644841936650:aes(
      1644841936650:x = X1,
      1644841936651:y = X2,
      1644841936651:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644841936652:)
    1644841936652:) +
  1644841936653:geom_point()
1644841955821:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644841955822:n_neighbors = 10
                                         1644841955823:# spread = 0.9,
                                           1644841955824:#  min_dist = 0.2
                                           1644841955825:#                           metric = "manhattan",
                                           1644841955826:#                learning_rate = 0.6,
                                           1644841955826:#n_epochs = 200
                                           1644841955827:)
1644841957794:#plot(gbm.cdnn.mrna.umap$layout)
  1644841957795:ggplot(
    1644841957796:data.frame(gbm.cdnn.mrna.umap$layout),
    1644841957797:aes(
      1644841957798:x = X1,
      1644841957798:y = X2,
      1644841957799:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644841957799:)
    1644841957800:) +
  1644841957800:geom_point()
1644841968189:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644841968190:n_neighbors = 8
                                         1644841968191:# spread = 0.9,
                                           1644841968191:#  min_dist = 0.2
                                           1644841968192:#                           metric = "manhattan",
                                           1644841968193:#                learning_rate = 0.6,
                                           1644841968194:#n_epochs = 200
                                           1644841968195:)
1644841969912:#plot(gbm.cdnn.mrna.umap$layout)
  1644841969913:ggplot(
    1644841969914:data.frame(gbm.cdnn.mrna.umap$layout),
    1644841969915:aes(
      1644841969916:x = X1,
      1644841969917:y = X2,
      1644841969918:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644841969918:)
    1644841969918:) +
  1644841969919:geom_point()
1644841987142:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644841987144:n_neighbors = 7
                                         1644841987145:# spread = 0.9,
                                           1644841987146:#  min_dist = 0.2
                                           1644841987148:#                           metric = "manhattan",
                                           1644841987148:#                learning_rate = 0.6,
                                           1644841987149:#n_epochs = 200
                                           1644841987149:)
1644841989265:#plot(gbm.cdnn.mrna.umap$layout)
  1644841989265:ggplot(
    1644841989266:data.frame(gbm.cdnn.mrna.umap$layout),
    1644841989267:aes(
      1644841989267:x = X1,
      1644841989268:y = X2,
      1644841989268:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644841989269:)
    1644841989269:) +
  1644841989269:geom_point()
1644842003644:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644842003645:n_neighbors = 6
                                         1644842003646:# spread = 0.9,
                                           1644842003647:#  min_dist = 0.2
                                           1644842003647:#                           metric = "manhattan",
                                           1644842003648:#                learning_rate = 0.6,
                                           1644842003649:#n_epochs = 200
                                           1644842003649:)
1644842007621:#plot(gbm.cdnn.mrna.umap$layout)
  1644842007622:ggplot(
    1644842007623:data.frame(gbm.cdnn.mrna.umap$layout),
    1644842007623:aes(
      1644842007624:x = X1,
      1644842007624:y = X2,
      1644842007625:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644842007625:)
    1644842007626:) +
  1644842007626:geom_point()
1644842028178:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644842028179:n_neighbors = 5
                                         1644842028179:# spread = 0.9,
                                           1644842028180:#  min_dist = 0.2
                                           1644842028180:#                           metric = "manhattan",
                                           1644842028181:#                learning_rate = 0.6,
                                           1644842028181:#n_epochs = 200
                                           1644842028182:)
1644842030106:#plot(gbm.cdnn.mrna.umap$layout)
  1644842030107:ggplot(
    1644842030108:data.frame(gbm.cdnn.mrna.umap$layout),
    1644842030109:aes(
      1644842030110:x = X1,
      1644842030110:y = X2,
      1644842030111:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644842030111:)
    1644842030112:) +
  1644842030112:geom_point()
1644842045868:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644842045869:n_neighbors = 4
                                         1644842045870:# spread = 0.9,
                                           1644842045871:#  min_dist = 0.2
                                           1644842045872:#                           metric = "manhattan",
                                           1644842045872:#                learning_rate = 0.6,
                                           1644842045873:#n_epochs = 200
                                           1644842045873:)
1644842048568:#plot(gbm.cdnn.mrna.umap$layout)
  1644842048569:ggplot(
    1644842048571:data.frame(gbm.cdnn.mrna.umap$layout),
    1644842048571:aes(
      1644842048572:x = X1,
      1644842048572:y = X2,
      1644842048573:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644842048573:)
    1644842048574:) +
  1644842048574:geom_point()
1644842056391:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644842056393:n_neighbors = 6
                                         1644842056394:# spread = 0.9,
                                           1644842056396:#  min_dist = 0.2
                                           1644842056396:#                           metric = "manhattan",
                                           1644842056397:#                learning_rate = 0.6,
                                           1644842056398:#n_epochs = 200
                                           1644842056399:)
1644842059666:#plot(gbm.cdnn.mrna.umap$layout)
  1644842059668:ggplot(
    1644842059669:data.frame(gbm.cdnn.mrna.umap$layout),
    1644842059670:aes(
      1644842059670:x = X1,
      1644842059671:y = X2,
      1644842059671:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644842059672:)
    1644842059672:) +
  1644842059673:geom_point()
1644842065986:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644842065987:n_neighbors = 5
                                         1644842065989:# spread = 0.9,
                                           1644842065989:#  min_dist = 0.2
                                           1644842065990:#                           metric = "manhattan",
                                           1644842065990:#                learning_rate = 0.6,
                                           1644842065991:#n_epochs = 200
                                           1644842065991:)
1644842069310:#plot(gbm.cdnn.mrna.umap$layout)
  1644842069311:ggplot(
    1644842069311:data.frame(gbm.cdnn.mrna.umap$layout),
    1644842069312:aes(
      1644842069313:x = X1,
      1644842069313:y = X2,
      1644842069314:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644842069314:)
    1644842069314:) +
  1644842069315:geom_point()
1644842075563:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644842075565:n_neighbors = 2
                                         1644842075566:# spread = 0.9,
                                           1644842075566:#  min_dist = 0.2
                                           1644842075567:#                           metric = "manhattan",
                                           1644842075567:#                learning_rate = 0.6,
                                           1644842075568:#n_epochs = 200
                                           1644842075568:)
1644842082564:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644842082564:n_neighbors = 3
                                         1644842082565:# spread = 0.9,
                                           1644842082565:#  min_dist = 0.2
                                           1644842082566:#                           metric = "manhattan",
                                           1644842082567:#                learning_rate = 0.6,
                                           1644842082567:#n_epochs = 200
                                           1644842082568:)
1644842084255:#plot(gbm.cdnn.mrna.umap$layout)
  1644842084257:ggplot(
    1644842084258:data.frame(gbm.cdnn.mrna.umap$layout),
    1644842084259:aes(
      1644842084259:x = X1,
      1644842084260:y = X2,
      1644842084260:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644842084261:)
    1644842084261:) +
  1644842084262:geom_point()
1644842105945:gbm.cdnn.mrna.tsne <- Rtsne(gbm.cdnn.mrna.mat)
1644842108468:#plot(gbm.cdnn.mrna.tsne$Y)
  1644842108469:ggplot(
    1644842108470:data.frame(gbm.cdnn.mrna.tsne$Y),
    1644842108470:aes(
      1644842108471:x = X1,
      1644842108471:y = X2,
      1644842108472:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644842108472:)
    1644842108473:) +
  1644842108473:geom_point()
1644842115911:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644842115913:n_neighbors = 3
                                         1644842115914:# spread = 0.9,
                                           1644842115915:#  min_dist = 0.2
                                           1644842115915:#                           metric = "manhattan",
                                           1644842115916:#                learning_rate = 0.6,
                                           1644842115916:#n_epochs = 200
                                           1644842115916:)
1644842118613:#plot(gbm.cdnn.mrna.umap$layout)
  1644842118613:ggplot(
    1644842118614:data.frame(gbm.cdnn.mrna.umap$layout),
    1644842118615:aes(
      1644842118616:x = X1,
      1644842118616:y = X2,
      1644842118617:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644842118618:)
    1644842118618:) +
  1644842118618:geom_point()
1644842136909:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644842136910:#                            n_neighbors = 3
                                           1644842136911:# spread = 0.9,
                                           1644842136911:#  min_dist = 0.2
                                           1644842136912:#                           metric = "manhattan",
                                           1644842136912:#                learning_rate = 0.6,
                                           1644842136913:#n_epochs = 200
                                           1644842136913:)
1644842139322:#plot(gbm.cdnn.mrna.umap$layout)
  1644842139323:ggplot(
    1644842139325:data.frame(gbm.cdnn.mrna.umap$layout),
    1644842139326:aes(
      1644842139326:x = X1,
      1644842139327:y = X2,
      1644842139328:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644842139328:)
    1644842139329:) +
  1644842139330:geom_point()
1644842149561:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644842149563:n_neighbors = 3
                                         1644842149564:# spread = 0.9,
                                           1644842149565:#  min_dist = 0.2
                                           1644842149565:#                           metric = "manhattan",
                                           1644842149566:#                learning_rate = 0.6,
                                           1644842149567:#n_epochs = 200
                                           1644842149567:)
1644842151248:#plot(gbm.cdnn.mrna.umap$layout)
  1644842151248:ggplot(
    1644842151249:data.frame(gbm.cdnn.mrna.umap$layout),
    1644842151250:aes(
      1644842151251:x = X1,
      1644842151252:y = X2,
      1644842151252:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644842151253:)
    1644842151254:) +
  1644842151254:geom_point()
1644842348476:gbm.cdnn.mrna.umap <- umap(gbm.cdnn.mrna.mat,
                                         1644842348477:n_neighbors = 5
                                         1644842348478:# spread = 0.9,
                                           1644842348479:#  min_dist = 0.2
                                           1644842348479:#                           metric = "manhattan",
                                           1644842348480:#                learning_rate = 0.6,
                                           1644842348480:#n_epochs = 200
                                           1644842348481:)
1644842349839:#plot(gbm.cdnn.mrna.umap$layout)
  1644842349840:ggplot(
    1644842349841:data.frame(gbm.cdnn.mrna.umap$layout),
    1644842349841:aes(
      1644842349842:x = X1,
      1644842349842:y = X2,
      1644842349843:color = gbm.cdnn.samples$Subtype # label points with different colors for each `subgroup`
      1644842349843:)
    1644842349844:) +
  1644842349844:geom_point()
1644842478251:write.csv(data.frame(gbm.cdnn.mrna.umap$layout), paste0(resultDir,'GBM_cdnn_umap.csv'))
1644842479076:write.csv(data.frame(gbm.cdnn.mrna.tsne$Y), paste0(resultDir,'GBM_cdnn_tsne.csv'))
1644842479779:write.csv(data.frame(gbm.cdnn.samples), paste0(resultDir,'GBM_cdnn_clinical.csv'))