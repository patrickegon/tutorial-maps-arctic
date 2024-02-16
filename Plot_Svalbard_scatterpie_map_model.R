# Scatterpie Plots for Introduction
```R
# Load necessary libraries
library(PlotSvalbard)
library(ggplot2)
library(scatterpie)

## LVL_2

### Map 1: Svalbard + Currents + Depth

```R
# Display a basemap of the Barents Sea with bathymetry, currents, and specified style.
# Correct script above if needed.
basemap("barentssea", bathymetry = TRUE, bathy.style = "poly_greys", currents = TRUE, current.alpha = 0.7)
# Display a scatterpie plot on a Svalbard map showing the distribution of groups based on collection location.
# Coordinates include Longitude, Latitude, group names, Other, Total, UTM longitude, and UTM latitude.
# Font style for species names is set to italic.
```R
# Load data for the inner zone
getwd()
setwd("~/Documents/lvl-6/")
scatterpie_16S_inner_z <- read.csv("scatterpie_16S_inner_z.csv")
x <- transform_coord(scatterpie_16S_inner_z, lon = "Longitude", lat = "Latitude", bind = TRUE)
species <- colnames(x)[!colnames(x) %in% c("lon.utm", "lat.utm", "ID", "Longitude", "Latitude", "Total")]

# Display scatterpie plot on the Kongsfjorden map for the inner zone
basemap("kongsfjorden", limits = c(11.9,12.6,78.8,79.1), round.lon = 2, round.lat = 1) +
  geom_scatterpie(aes(x = lon.utm, y = lat.utm, group = ID, r = 12*Total),
                  data = x, cols = species, size = 0.1) + scale_fill_discrete(name = "Species",
                                                                              breaks = species, labels = parse(text = paste0("italic(" , sub("*\\.", "~", species), ")")))

### Map 3: Outer zone

```R
# Load data for the outer zone
getwd()
setwd("~/Documents/lvl-6/")
scatterpie_16S_outer_z <- read.csv("scatterpie_16S_outer_z.csv")
x <- transform_coord(scatterpie_16S_outer_z, lon = "Longitude", lat = "Latitude", bind = TRUE)
species <- colnames(x)[!colnames(x) %in% c("lon.utm", "lat.utm", "ID", "Longitude", "Latitude", "Total")]

# Display scatterpie plot on the Barents Sea map for the outer zone
basemap("barentssea", limits = c(3.8,13,78.8,79.2), round.lon = 2, round.lat = 1) +
  geom_scatterpie(aes(x = lon.utm, y = lat.utm, group = ID, r = 130*Total),
                  data = x, cols = species, size = 0.1) + scale_fill_discrete(name = "Species",
                                                                              breaks = species, labels = parse(text = paste0("italic(" , sub("*\\.", "~", species), ")")))

### Inner zone

# Load data for the inner zone
getwd()
setwd("~/Documents/lvl-6/")
scatterpie_18S_inner_z <- read.csv("scatterpie_18S_inner_z.csv")
x <- transform_coord(scatterpie_18S_inner_z, lon = "Longitude", lat = "Latitude", bind = TRUE)
species <- colnames(x)[!colnames(x) %in% c("lon.utm", "lat.utm", "ID", "Longitude", "Latitude", "Total")]

# Display scatterpie plot on the Kongsfjorden map for the inner zone
basemap("kongsfjorden", limits = c(11.9,12.6,78.8,79.1), round.lon = 2, round.lat = 1) +
  geom_scatterpie(aes(x = lon.utm, y = lat.utm, group = ID, r = 12*Total),
                  data = x, cols = species, size = 0.1) + scale_fill_discrete(name = "Species",
                                                                              breaks = species, labels = parse(text = paste0("italic(" , sub("*\\.", "~", species), ")")))

### Outer zone

```R
# Load data for the outer zone
getwd()
setwd("~/Documents/18S")
scatterpie_18S_outer_z <- read.csv("scatterpie_18S_outer_z.csv")
x <- transform_coord(scatterpie_18S_outer_z, lon = "Longitude", lat = "Latitude", bind = TRUE)
species <- colnames(x)[!colnames(x) %in% c("lon.utm", "lat.utm", "ID", "Longitude", "Latitude", "Total")]

# Display scatterpie plot on the Barents Sea map for the outer zone
basemap("barentssea", limits = c(3.8,13,78.8,79.2), round.lon = 2, round.lat = 1) +
  geom_scatterpie(aes(x = lon.utm, y = lat.utm, group = ID, r = 100*Total),
                  data = x, cols = species, size = 0.1) + scale_fill_discrete(name = "Species",
                                                                              breaks = species, labels = parse(text = paste0("italic(" , sub("*\\.", "~", species), ")")))

### Complementary/Auxiliary Maps for Scatterpie Figures

```R
# Display a basemap of the Kongsfjorden inner area with bathymetry and scaled currents.
basemap("kongsfjorden", limits = c(11.9,12.6,78.8,79.1), bathymetry = TRUE, currents = T, current.size = "scaled")
# Display a basemap of the Kongsfjorden and Fram Strait outer area with bathymetry and scaled currents.
basemap("barentssea", bathymetry = TRUE, currents = TRUE, limits = c(3.8,13,78.8,79.2), current.size = "scaled")

# Example Scatterpie Plot

# Load data
getwd()
setwd("~/Documents/Documentos")
sctp_kongsfjorden_03 <- read.csv("sctp_kongsfjorden_03.csv")
x <- transform_coord(sctp_kongsfjorden_03, lon = "Longitude", lat = "Latitude", bind = TRUE)
species <- colnames(x)[!colnames(x) %in% c("lon.utm", "lat.utm", "ID", "Longitude", "Latitude", "Total")]

# Display scatterpie plot on the Barents Sea map for an example dataset
basemap("barentssea",
