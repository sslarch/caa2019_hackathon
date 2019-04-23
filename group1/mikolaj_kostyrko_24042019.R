data <- read.csv('D:/Hackaton_CAA_R/caa2019_hackathon/data/michelsberg.csv')
getwd()
setwd(dir = choose.dir())
install.packages('archdata')
library(archdata)
data("Michelsberg")
str(data)

#creating table
tb <- table(data$site_name,data$feature_name)
#tworzenie kolumny z liczbami
tb_sum1 <- data.frame(rowSums(table(data$site_name,data$feature_name)))
#zmiana nazwy kolumny c- dojście do kolumn ale równiez łączenie
colnames(tb_sum)<-c('features')

#sites are represented in the table by more than one feature
length(tb_sum[tb_sum$features > 1,])
Morelfeature <-tb_sum$features >1
hist(tb_sum$features[Morelfeature])

#TASK 4
library(mapview)
library(sp)
data <- read.csv('D:/Hackaton_CAA_R/caa2019_hackathon/data/michelsberg.csv')

data_spatial <- data
coordinates(data_spatial) <- ~x_utm32n+y_utm32n
proj4string(data_spatial)<-CRS("+proj=utm +zone=32")
mapview(data_spatial)

#adding another basemap
mapviewOptions(basemaps=c("Stamen.Watercolor"))

mapview(data_spatial, zcol='kw3', cex='kw3')

















