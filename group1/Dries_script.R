data <- read.csv('C:/Users/Dries Daems/Documents/R/caa2019_hackathon/data/michelsberg.csv')

setwd(dir = choose.dir())

install.packages('archdata')
library(archdata)
data("Michelsberg")

str(data)

# Task 1
question1 <- data.frame(rowSums(table(data$site_name, data$feature_name)))
colnames(question1) <- c('features')

length(question1[question1$features > 1,])
More1feature <- question1$features > 1
hist(question1$features[More1feature])

#question1b <- subset(question1, select= question1$features)


# Task 4
library(mapview)
library(sp)

data_spatial <- data

coordinates(data_spatial) <- ~x_utm32n+y_utm32n
proj4string(data_spatial) <- CRS("+proj=utm +zone=32")
mapview(data_spatial)

#Other basemaps
mapviewOptions(basemaps = c("Stamen.Watercolor"))

# colour site markers
mapview(data_spatial, zcol = "kw3", cex = "kw3" )
