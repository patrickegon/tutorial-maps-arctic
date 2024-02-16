# Biogeochemicals parameters plot Plot Svalbard.
# Distance to Land

library(PlotSvalbard)
library(ggplot2)

# Set(WD)
# read.csv (nitrite):
getwd()
setwd("~/Documents/results_biogeochemicals/10m/")
nitrite <- read.csv("nitrite.csv")
# plot nitritt profile:
a <- interpolate_spatial(nitrite, Subset = "From <= 10", value = "nitrite") ## Interpolate
#> [inverse distance weighted interpolation]
plot(a, legend.label = "nitrite [µmol/L]") + geom_text(data = nitrite, aes(x = lon.utm, y = lat.utm, label = Station))

# nitrat profile:
# read.csv nitrat
nitrat <- read.csv("nitrat.csv")

b <- interpolate_spatial(nitrat, Subset = "From <= 10", value = "nitrat")

plot(b, legend.label = "nitrat [µmol/L]") + geom_text(data = nitrat, aes(x = lon.utm, y = lat.utm, label = Station))

# silikat profife:
# read.csv silikat
silikat <- read.csv("silikat.csv")

c <- interpolate_spatial(silikat, Subset = "From <= 10", value = "silikat")

plot(c, legend.label = "silikat [µmol/L]") + geom_text(data = silikat, aes(x = lon.utm, y = lat.utm, label = Station))

# fosfat profile:
# read.csv fosfat
fosfat <- read.csv("fosfat.csv")

e <- interpolate_spatial(fosfat, Subset = "From <= 10", value = "fosfat")

plot(e, legend.label = "fosfat [µmol/L]") + geom_text(data = fosfat, aes(x = lon.utm, y = lat.utm, label = Station))

# NH4 profile:
# read.csv NH4
NH4 <- read.csv("NH4.csv")

f <- interpolate_spatial(NH4, Subset = "From <= 10", value = "NH4")

plot(f, legend.label = "NH4 [µmol/L]") + geom_text(data = NH4, aes(x = lon.utm, y = lat.utm, label = Station))

# Urea profile:
# read.csv Urea
Urea <- read.csv("Urea.csv")
g <- interpolate_spatial(Urea, Subset = "From <= 10", value = "Urea")
plot(g,  legend.label = "Urea [µmol/L]") + geom_text(data = Urea, aes(x = lon.utm, y = lat.utm, label = Station))


###########################  20M #########################################

# setwd:
getwd()
setwd("~/Documentos/biogeochemicals/20m")

# nitrite profile:
# read.csv nitritt
nitrite <- read.csv("nitrite.csv")

h <- interpolate_spatial(nitrite, Subset = "From <= 300", value = "nitrite")

plot(h, legend.label = "nitrite [µmol/L]") + geom_text(data = nitrite, aes(x = lon.utm, y = lat.utm, label = Station))

# nitrat profile:
# read.csv nitrat
nitrat <- read.csv("nitrat.csv")

i <- interpolate_spatial(nitrat, Subset = "From <= 300", value = "nitrat")

plot(i, legend.label = "nitrat [µmol/L]") + geom_text(data = nitrat, aes(x = lon.utm, y = lat.utm, label = Station))

# silikat profile:
# read.csv silikat
silikat <- read.csv("silikat.csv")

j <- interpolate_spatial(silikat, Subset = "From <= 300", value = "silikat")

plot(j, legend.label = "silikat [µmol/L]") + geom_text(data = silikat, aes(x = lon.utm, y = lat.utm, label = Station))

# fosfat profile:
# read.csv fosfat
fosfat <- read.csv("fosfat.csv")

l <- interpolate_spatial(fosfat, Subset = "From <= 300", value = "fosfat")

plot(l, legend.label = "fosfat [µmol/L]") + geom_text(data = fosfat, aes(x = lon.utm, y = lat.utm, label = Station))

# NH4 profile:
# read.csv NH4
NH4 <- read.csv("NH4.csv")

m <- interpolate_spatial(NH4, Subset = "From <= 300", value = "NH4")

plot(m, legend.label = "NH4 [µmol/L]") + geom_text(data = NH4, aes(x = lon.utm, y = lat.utm, label = Station))

# Urea profile:
# read.csv Urea
Urea <- read.csv("Urea.csv")

n <- interpolate_spatial(Urea, Subset = "From <= 300", value = "Urea") 

plot(n, legend.label = "Urea [µmol/L]") + geom_text(data = Urea, aes(x = lon.utm, y = lat.utm, label = Station))

#####   TSM, Chl a and fluorescence
# setwd:
getwd()
setwd("~/Documents/chla_tsm_phaeo_10m/")

# read.csv chla
chla <- read.csv("chla.csv")

x <- interpolate_spatial(chla, Subset = "From <= 10", value = "chla")

plot(x, legend.label = "Chlorophyll-a/n(mg/m3)") + geom_text(data = chla, aes(x = lon.utm, y = lat.utm, label = Station))

# read.csv phaeophytin
phaeo <- read.csv("phaeo.csv")

y <- interpolate_spatial(phaeo, Subset = "From <= 10", value = "phaeo")

plot(y,  legend.label = "Phaeophytin [mg/m3]") + geom_text(data = phaeo, aes(x = lon.utm, y = lat.utm, label = Station))

# read.csv TSM
TSM <- read.csv("TSM.csv")

z <- interpolate_spatial(TSM, Subset = "From <= 10", value = "TSM")

plot(z, legend.label = "TSM") + geom_text(data = TSM, aes(x = lon.utm, y = lat.utm, label = Station))


####  TSM, Chl a and fluorescence

# SETWD
getwd()
setwd("~/Documentos/chla_tsm_phaeo_20m")
setwd("~/Documents/chla_tsm_phaeo_10m/")

# read.csv chla
chla <- read.csv("chla.csv")

x <- interpolate_spatial(chla, Subset = "From <= 300", value = "chla")

plot(x, legend.label = "Chlorophyll-a\n(mg/m3)") + geom_text(data = chla, aes(x = lon.utm, y = lat.utm, label = Station))

# read.csv phaeophytin
phaeo <- read.csv("phaeo.csv")

y <- interpolate_spatial(phaeo, Subset = "From <= 300", value = "phaeo")

plot(y, legend.label = "Phaeophytin [mg/m3]") + geom_text(data = phaeo, aes(x = lon.utm, y = lat.utm, label = Station))

# read.csv TSM
TSM <- read.csv("TSM.csv")

z <- interpolate_spatial(TSM, Subset = "From <= 300", value = "TSM")

plot(z, legend.label = "TSM") + geom_text(data = TSM, aes(x = lon.utm, y = lat.utm, label = Station))

# Distance to land Kongsfjorden and Fram strait:

# setwd

getwd()
setwd("~/Documents/distance2land/")

d2l <- read.csv("d2l_2.csv")

dists <- dist2land(d2l, lon.col = "Lon", lat.col = "Lat", map.type = "svalbard")
dists$Area <- ordered(dists$Area, c("Kongsfjorden", "Framstrait"))

ggplot(dists, aes(x = Area, y = dist, label = Station, color = Area)) +
  geom_text() + ylab("Distance to land (km)") + scale_color_hue()

# distance to land S, N, T:

d2l_2 <- read.csv("d2l_2.csv")

dists <- dist2land(d2l_2, lon.col = "Lon", lat.col = "Lat", map.type = "svalbard")
dists$Area <- ordered(dists$Area, c("South", "North", "Transition"))

ggplot(dists, aes(x = Area, y = dist, label = Station, color = Area)) +
  geom_text() + ylab("Distance to land (km)") + scale_color_hue()

library(ggplot2)
data("npi_stations")

dists <- dist2land(npi_stations, lon.col = "Lon", lat.col = "Lat", map.type = "svalbard")
dists$Area <- ordered(dists$Area, c("Kongsfjorden", "Framstrait", "Rijpfjorden"))

ggplot(dists, aes(x = Area, y = dist, label = Station, color = Area)) +
  geom_text() + ylab("Distance to land (km)") + scale_color_hue()

############################################################################################
############################################################################################
############################################################################################
