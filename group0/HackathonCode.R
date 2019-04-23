#Load archdata package
library(archdata)

#Load our dataset
data(Michelsberg)

#Explore the dataset
head(Michelsberg)
summary(Michelsberg)

#View the help for the Michelsberg dataset
?archdata::Michelsberg

#Show the entire dataset table
View(Michelsberg)

#Create new variable feature_name from row names
Michelsberg$feature_name = rownames(Michelsberg)

View(Michelsberg)

#---- 1. Create a table of site names with feature counts for each site ----#

#Load dplyr package
library(dplyr)
?dplyr

#First, create a table with only the variables of interest
Michelsberg2 <- Michelsberg %>% 
  select(site_name, feature_name)

#Create a new table of site names and feature counts for each site
Sites <- Michelsberg2 %>%
  group_by(site_name) %>%
  summarise(feature_count = n())

# How many sites are represented by more than one feature?
Sites_small <- Sites %>%
  filter(feature_count > 1)

#---- 4. Spatial map of sites ----#

# Call the SF (simple features) package
library(sf)

# Transform our data frame to a SF object named MSF. Adds a geometry (coords) field.
MSF <- Michelsberg %>%
  sf::st_as_sf(coords = c("x_utm32n", "y_utm32n"), crs = 32632)

# Using mapview package, create interactive map of sites
MSF %>%
  mapview::mapview()

# Achieve the same with ggplot. Import ggplot2 package.
library(ggplot2)

# Practice using ggplot (bar chart of number of features per site)
Sites_small %>%
  ggplot() +
  geom_col(mapping = aes(x = site_name, y = feature_count, fill = feature_count))

# Plot our spatial data
MSF %>%
  ggplot() +
  geom_sf(mapping = aes(colour = mbk_phase, fill = mbk_phase)) +
  scale_color_brewer(palette = "Paired") + 
  scale_fill_brewer(palette = "Paired")
