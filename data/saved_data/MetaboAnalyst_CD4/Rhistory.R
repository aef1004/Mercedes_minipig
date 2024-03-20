# PID of current job: 14480
mSet<-InitDataObjects("conc", "pathora", FALSE)
cmpd.vec<-c("HMDB0000232","HMDB0033161","HMDB0001330","HMDB0062578","HMDB0185628","HMDB0060260","HMDB0001552","HMDB0029416","HMDB0000670","HMDB0015454","HMDB0032926","HMDB0005973","HMDB0033961","HMDB0060537","HMDB0060826","HMDB0004185","HMDB0003066","HMDB0135598","HMDB0060323","HMDB0032357","HMDB0155289","HMDB0060757","HMDB0000684","HMDB0012948","HMDB0014350","HMDB0060321","HMDB0034578","HMDB0030272")
mSet<-Setup.MapData(mSet, cmpd.vec);
mSet<-CrossReferencing(mSet, "hmdb");
mSet<-CreateMappingResultTable(mSet)
mSet<-SetKEGG.PathLib(mSet, "hsa", "current")
mSet<-SetMetabolomeFilter(mSet, F);
mSet<-CalculateOraScore(mSet, "rbc", "hyperg")
mSet<-PlotPathSummary(mSet, F, "path_view_0_", "png", 72, width=NA)
mSet<-PlotKEGGPath(mSet, "Tryptophan metabolism",528, 480, "png", NULL)
mSet<-RerenderMetPAGraph(mSet, "zoom1621628194920.png",528.0, 480.0, 100.0)
