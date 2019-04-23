library(archdata)

#data(Michelsberg)

dt <- read.csv("../data/michelsberg.csv")

tb <- data.frame(rowSums(table(dt$site_name, dt$feature_name)))

names(tb) <- "FrequencyOfTypes"

hasFeature <- tb$FrequencyOfTypes > 1

sum(hasFeature)

hist(tb$FrequencyOfTypes[hasFeature])

library(mapview)
library(sp)

spatial <- dt

coordinates(spatial) <- ~x_utm32n+y_utm32n

proj4string(spatial) <- CRS("+proj=utm +zone=32")

mapview(spatial)

