# Novel technique to study immunometabolism during *Mycobacterium tuberculosis* infection 

This repository contains the code to analyze the data and create the plots for my fourth chapter on my dissertation, "Novel technique to study immunometabolism during *Mycobacterium tuberculosis* infection", R Code and data released under an MIT License. To use the R code and/or data in this repository, please cite [insert citation]

This repository contains data from a 2015 experiment which involved evaluating the immune response (flow cytometry) and induced metabolites (LC-MS) to BCG in minpigs before and after infection with Mycobacterium tuberculosis. 

Repository Directory

- flow_cleaning_12week.Rmd : code to clean up the flow cytometry data for week 12 
- flow_cleaning_30 DPI.Rmd : code to clean up the flow cytometry data for 30 days post infection 
- compare_timepoints.Rmd : code to compare the differences between groups in both the flow cytometry and metabolomics data and plot the correlations
- MetaboAnalyst.Rmd : information on how HMDB was searched and the MetaboAnalyst search criteria
- pick_metabolites.Rmd : quick code analysis (maybe cleaned up from compare_timepoints?) for identifying metabolites to send through MetaboAnalyst
- flow_tables.Rmd : code to create the tables to describe the flow cytometry markers and the vaccination status for the minpigs


Note: The .fcs files are too large to push to Github. The data can be obtained from Amy Fox (amyfox@colostate.edu). 
