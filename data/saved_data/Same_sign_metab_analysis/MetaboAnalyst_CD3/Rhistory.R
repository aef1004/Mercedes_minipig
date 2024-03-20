# PID of current job: 3650636
mSet<-InitDataObjects("conc", "pathora", FALSE)
cmpd.vec<-c("HMDB0008680","HMDB0008681","HMDB0008713","HMDB0008714","HMDB0008745","HMDB0008649","HMDB0009607","HMDB0009640","HMDB0009673","HMDB0009736","HMDB0009737","HMDB0009768","HMDB0114516","HMDB0116719","HMDB0114568","HMDB0114460","HMDB0114623","HMDB0114648","HMDB0114649","HMDB0116714","HMDB0114434","HMDB0114351","HMDB0114380","HMDB0114408","HMDB0008648","HMDB0008712","HMDB0008679","HMDB0008647")
mSet<-Setup.MapData(mSet, cmpd.vec);
mSet<-CrossReferencing(mSet, "hmdb");
mSet<-CreateMappingResultTable(mSet)
mSet<-SetKEGG.PathLib(mSet, "hsa", "current")
mSet<-SetMetabolomeFilter(mSet, F);
mSet<-CalculateOraScore(mSet, "rbc", "hyperg")
mSet<-PlotPathSummary(mSet, F, "path_view_0_", "png", 72, width=NA)
mSet<-PlotKEGGPath(mSet, "Glycerophospholipid metabolism",528, 480, "png", NULL)
mSet<-RerenderMetPAGraph(mSet, "zoom1621892680958.png",528.0, 480.0, 100.0)
mSet<-PlotKEGGPath(mSet, "Glycerophospholipid metabolism",528, 480, "png", NULL)
mSet<-PlotKEGGPath(mSet, "Glycerophospholipid metabolism",528, 480, "png", NULL)
mSet<-SaveTransformedData(mSet)
UpdateDataObjects("conc", "msetora", FALSE)
mSet<-SetMetabolomeFilter(mSet, F);
mSet<-SetCurrentMsetLib(mSet, "smpdb_pathway", 2);
mSet<-CalculateHyperScore(mSet)
mSet<-SetMetabolomeFilter(mSet, F);
mSet<-SetCurrentMsetLib(mSet, "kegg_pathway", 2);
mSet<-CalculateHyperScore(mSet)
mSet<-SetMetabolomeFilter(mSet, F);
mSet<-SetCurrentMsetLib(mSet, "drug", 2);
mSet<-CalculateHyperScore(mSet)
mSet<-SetMetabolomeFilter(mSet, F);
mSet<-SetCurrentMsetLib(mSet, "super_class", 2);
mSet<-CalculateHyperScore(mSet)
mSet<-PlotORA(mSet, "ora_3_", "net", "png", 72, width=NA)
mSet<-PlotEnrichDotPlot(mSet, "ora", "ora_dot_3_", "png", 72, width=NA)
mSet<-PlotEnrichPieChart(mSet, "ora", "ora_pie_0_", "png", 72)
mSet<-CalculateHyperScore(mSet)
mSet<-PlotORA(mSet, "ora_4_", "net", "png", 72, width=NA)
mSet<-PlotEnrichDotPlot(mSet, "ora", "ora_dot_4_", "png", 72, width=NA)
mSet<-PlotEnrichPieChart(mSet, "ora", "ora_pie_1_", "png", 72)
