Michelsberg <- read.csv("../data/michelsberg.csv")

task_1a <- rowSums(table(Michelsberg$site_name,Michelsberg$feature_name))

task_1b <- task_1a[task_1a>1]

dim(Michelsberg)
task_2 <- colSums(Michelsberg[,6:40])

full_names <- c("Pot/vessel type 3","Bottle type 4","Beaker type 2","Pot/vessel type 2","Beaker type 3","Beaker type 7","Carinated bowl type 5","Storage vessel type 1","Storage vessel type 2","Tulip beaker type 4a","Carinated bowl type 2","Carinated bowl type 4","Beaker type 5","Tulip beaker type 3b","Bottle type 3","Carinated bowl type 3","Carinated bowl type 1","Beaker type 6","Pot/vessel type 1","Beaker type 1","Tulip beaker type 3a","Storage vessel type 4","Conical bowl type 2","Conical bowl type 1","Tulip beaker type 2b","Bottle type 2","Globular bowl type 3","Tulip beaker type 2a","Globular bowl type 2","Beaker type 4Globular bowl type 1","Bottle type 1","Tulip beaker type 1b","Storage vessel type 3","Tulip beaker type 1a")

saveRDS(full_names, file = "full_type_names.RDS")
