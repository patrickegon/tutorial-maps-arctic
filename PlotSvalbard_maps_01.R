library(PlotSvalbard)
library(ggplot2)
library(ggsn)
library(sf)

# Mapa de Svalbard e o mapa da região onde fica o arquipélago.
# add a bussola, distância, nomes e local exato do tidewater-glacier.

# Map 1: Panartico
basemap("panarctic", limits = 60, bathymetry = TRUE, label.font = 10)

# Map 2: MOSJ project: inner and outter parts of Kongsfjorden.

basemap("mosj", bathymetry = TRUE, currents = TRUE, current.size = "scaled")

# Kongsfjorden: inner part, intermediary.
basemap("kongsfjorden", bathymetry = TRUE, currents = TRUE)

# teste
basemap("svalbard", limits = c(7, 13, 78.9, 79.1), bathymetry = TRUE, currents = TRUE, legends = c(TRUE, FALSE))

# testes:

# closer look (teste):
basemap("kongsfjorden", limits = c(11.2, 12.7, 78.8, 79), bathymetry = TRUE, label.font = 8)

basemap("svalbard", limits = c(8, 26, 76, 81), keep.glaciers = TRUE, bathymetry = TRUE, currents = TRUE,
        current.size = "scaled", legends = c(TRUE, FALSE), label.font = 8, bathy.style = "poly_blues")

basemap("svalbard")

# Mapa de Svalbard e do barentssea com barimetria, tipo de corrente e tamanho da corrente.
basemap("barentssea", limits = c(0, 26, 74, 81), keep.glaciers = TRUE, bathymetry = TRUE, currents = TRUE,
        current.size = "scaled", legends = c(FALSE, TRUE), label.font = 8)


# Mapa com as correntes oceânicas:
basemap("kongsfjordbotn")

basemap("kronebreen")

# Panarctic another view:

basemap("panarctic", limits = c(4*10^6, -4*10^6, 4*10^6, -4*10^6)) # limits in UTM coordinates
