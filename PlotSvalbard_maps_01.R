# Load necessary libraries
library(PlotSvalbard)
library(ggplot2)
library(ggsn)
library(sf)

# Map 1: Panarctic
# - Display the Panarctic basemap with a specified limit and bathymetry.
# - Font size for labels set to 10.
basemap("panarctic", limits = 60, bathymetry = TRUE, label.font = 10)

# Map 2: MOSJ project
# - Display the basemap for the MOSJ project, including bathymetry and currents.
# - Font size for labels is default.
basemap("mosj", bathymetry = TRUE, currents = TRUE, current.size = "scaled")

# Kongsfjorden: inner part, intermediary
# - Display the basemap for the inner part of Kongsfjorden with bathymetry and currents.
# - Font size for labels is default.
basemap("kongsfjorden", bathymetry = TRUE, currents = TRUE)

# Test: Svalbard map with specified limits
# - Display a test map with specified limits, bathymetry, currents, and legends.
# - Font size for labels is specified as 8.
basemap("svalbard", limits = c(7, 13, 78.9, 79.1), bathymetry = TRUE, currents = TRUE, legends = c(TRUE, FALSE))

# Test: Closer look at Kongsfjorden
# - Display a closer look at the Kongsfjorden area with specified limits, bathymetry, and smaller font size for labels.
basemap("kongsfjorden", limits = c(11.2, 12.7, 78.8, 79), bathymetry = TRUE, label.font = 8)

# Test: Svalbard map with various features
# - Display a test map of Svalbard with specified limits, including glaciers, bathymetry, currents, and legends.
# - Font size for labels is specified as 8, and a specific bathymetry style is applied.
basemap("svalbard", limits = c(8, 26, 76, 81), keep.glaciers = TRUE, bathymetry = TRUE, currents = TRUE,
        current.size = "scaled", legends = c(TRUE, FALSE), label.font = 8, bathy.style = "poly_blues")

# Test: Svalbard default map
# - Display the default Svalbard map.
basemap("svalbard")

# Map of Svalbard and Barents Sea
# - Display a map of Svalbard and the Barents Sea with specified limits, including glaciers, bathymetry, currents, and legends.
# - Font size for labels is specified as 8.
basemap("barentssea", limits = c(0, 26, 74, 81), keep.glaciers = TRUE, bathymetry = TRUE, currents = TRUE,
        current.size = "scaled", legends = c(FALSE, TRUE), label.font = 8)

# Map with ocean currents
# - Display a map with ocean currents in the Kongsfjordbotn area.
basemap("kongsfjordbotn")

# Map of Kronebreen
# - Display a map of Kronebreen.
basemap("kronebreen")

# Panarctic another view
# - Display another view of the Panarctic map with specified UTM coordinates.
basemap("panarctic", limits = c(4*10^6, -4*10^6, 4*10^6, -4*10^6)) # limits in UTM coordinates

