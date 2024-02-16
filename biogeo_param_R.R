# Biogeochemicals parameters plot Plot Svalbard.
# Distance to Land

library(PlotSvalbard)
library(ggplot2)

# Set(WD)
# read.csv (nitrite):
getwd()
setwd("~/Documents/Documentos/THESIS/results_biogeochemicals/10m/")
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
setwd("~/Documentos/THESIS/results_biogeochemicals/20m")

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
setwd("~/Documents/Documentos/THESIS/results_biogeochemicals/chla_tsm_phaeo_10m/")

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
setwd("~/Documentos/THESIS/results_biogeochemicals/chla_tsm_phaeo_20m")
setwd("~/Documents/Documentos/THESIS/results_biogeochemicals/chla_tsm_phaeo_10m/")

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
setwd("~/Documents/Documentos/THESIS/Sheets_thesis_2021/distance2land/")

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

df <- data.frame(Station = c("KpS6_5M", "KpS5_10M",	"KpS4_10M",	"KpS2_10M",	
                             "KpM5_10M",	"KpM5_50M",	"KpM4_10M",	"KpM2_10M",
                             "KpN4_10M",	"KpN2_10M",	"Kc7_10M",	"Kc6_10M",
                             "Kc5_10M", "CpN5_5M",	"Cc5_10M",	"Cc4_10M",
                             "KB6_0M",	"KB3_1M", "KB0_10M")
                 , Chla = c(0.643719311142471, 0.177496133587078, 1.08601338031798, 
                            0.748113333415167, 0.575087472822134, 0.49600308441278, 
                            1.05511590521208, 0.786899525569381, 0.448342085579213, 
                            0, 0, 0, 0.188343119528511, 0.614531058063707, 0, 
                            0.508822249616291, 2.06092732887219, 0, 2.61313752225421)
                 , From = c(5, 10, 10, 10, 10, 50, 10, 10, 10, 10, 10, 10, 10, 5, 10,
                            10, 0, 1, 10)
                 , lon.ut(448155., 447293.2, 446527.4, 445411.1, 447339.6, 447339.6, 446817.5, 445607.7, 
                          446941.1, 445508.1, 446297.1, 445842.4, 445372.5, 447296.1, 445588.7, 445631.6, 
                          443905.6, 434862.1, 418212.2)
                 , lat.utm(8755498, 8756067, 8756639, 8757636, 8756977, 8756977, 8757464, 8758296, 8758688, 
                           8759327, 8760926, 8760449, 8759999, 8770421, 8769848, 8769469, 8763527, 8766572, 
                           8777927)
                 , lon = c(12.4640666666667, 12.5178333333333, 12.55445, 12.5954760052263, 
                          12.4718666666667, 12.5296666666667, 12.5548333333333, 12.5548333333333,
                          12.4651666666667, 12.533, 12.4575066666667, 12.4784433333333, 12.49864, 
                          12.5268360134214, 12.4503133333333, 12.4475266666667, 12.3819666666667, 
                          11.9532, 11.14141)
                , lat = c(78.8788333333333, 78.8703333333333, 78.8655, 78.8607319816946, 78.8848166666667,
                          78.8778333333333, 78.8736666666667, 78.8736666666667, 78.894, 78.8888333333333, 
                          78.8999633333333, 78.9041783333333, 78.90862, 78.9938119612634, 78.9848383333333,
                          78.9882116666667, 78.9309666666667, 78.9542833333333, 79.0470216666667))