#~/Documents/Documentos/THESIS/Code_2021/R/Plot_Svalbard/Plot_Svalbard_scatterpie_map_model.R

library(PlotSvalbard)
library(ggplot2)
library(scatterpie)

# Plots Introdução.

# LVL_2

# Mapa 1: Svalbard+correntes+depth

basemap("barentssea", bathymetry = TRUE, bathy.style = "poly_greys", currents = TRUE, current.alpha = 0.7)

# Corrigir script acima.

######################################################################################
######################################################################################

# Mapa 2:

# Longitude + Latitude + nomes_dos_grupos_tax_>1% + Other + Total + lon.utm + lat.utm
# 18.00000 + 42.00000 + 12.48876... + 30.32762 + 100 + valr + valor
# Scatterpie + mapa de Svalbard e a distribuição dos grupos de acordo com o local de coleta.

############################### 16S rRNA ############################################

# Inner zone

# load data
getwd()
setwd("~/Documents/Documentos/THESIS/Code_2021/R/Plot_Svalbard/Scatterpie_plot_R/16S_rRNA_lvl-6/")

# read data_table 
scatterpie_16S_inner_z <- read.csv("scatterpie_16S_inner_z.csv")

x <- transform_coord(scatterpie_16S_inner_z, lon = "Longitude", lat = "Latitude", bind = TRUE)

species <- colnames(x)[!colnames(x) %in% c("lon.utm", "lat.utm", "ID",
                                           "Longitude", "Latitude", "Total")]

basemap("kongsfjorden", limits = c(11.9,12.6,78.8,79.1), round.lon = 2, round.lat = 1) +
  geom_scatterpie(aes(x = lon.utm, y = lat.utm, group = ID, r = 12*Total),
                  data = x, cols = species, size = 0.1) + scale_fill_discrete(name = "Species",
                                                                              breaks = species, labels = parse(text = paste0("italic(" , sub("*\\.", "~", species), ")")))

#######################################################################################
#######################################################################################

# Outer zone

# load data
getwd()
setwd("~/Documents/Documentos/THESIS/Code_2021/R/Plot_Svalbard/Scatterpie_plot_R/16S_rRNA_lvl-6/")

# read data_table 
scatterpie_16S_outer_z <- read.csv("scatterpie_16S_outer_z.csv")

x <- transform_coord(scatterpie_16S_outer_z, lon = "Longitude", lat = "Latitude", bind = TRUE)

species <- colnames(x)[!colnames(x) %in% c("lon.utm", "lat.utm", "ID",
                                           "Longitude", "Latitude", "Total")]
basemap("barentssea", limits = c(3.8,13,78.8,79.2), round.lon = 2, round.lat = 1) +
  geom_scatterpie(aes(x = lon.utm, y = lat.utm, group = ID, r = 130*Total),
                  data = x, cols = species, size = 0.1) + scale_fill_discrete(name = "Species",
                                                                              breaks = species, labels = parse(text = paste0("italic(" , sub("*\\.", "~", species), ")")))

#######################################################################################
#######################################################################################

############################### 18S rRNA  ############################################

# Inner zone

# load data
getwd()
setwd("~/Documents/Documentos/THESIS/Code_2021/R/Plot_Svalbard/Scatterpie_plot_R/18S_rRNA_lvl-6/")

# read data_table 
scatterpie_18S_inner_z <- read.csv("scatterpie_18S_inner_z.csv")

x <- transform_coord(scatterpie_18S_inner_z, lon = "Longitude", lat = "Latitude", bind = TRUE)

species <- colnames(x)[!colnames(x) %in% c("lon.utm", "lat.utm", "ID",
                                           "Longitude", "Latitude", "Total")]

basemap("kongsfjorden", limits = c(11.9,12.6,78.8,79.1), round.lon = 2, round.lat = 1) +
  geom_scatterpie(aes(x = lon.utm, y = lat.utm, group = ID, r = 12*Total),
                  data = x, cols = species, size = 0.1) + scale_fill_discrete(name = "Species",
                                                                              breaks = species, labels = parse(text = paste0("italic(" , sub("*\\.", "~", species), ")")))

#######################################################################################
#######################################################################################

# Outer zone

# load data
getwd()
setwd("~/Documents/Documentos/THESIS/Code_2021/R/Plot_Svalbard/Scatterpie_plot_R/18S")

# read data_table 
scatterpie_18S_outer_z <- read.csv("scatterpie_18S_outer_z.csv")

x <- transform_coord(scatterpie_18S_outer_z, lon = "Longitude", lat = "Latitude", bind = TRUE)

species <- colnames(x)[!colnames(x) %in% c("lon.utm", "lat.utm", "ID",
                                           "Longitude", "Latitude", "Total")]
basemap("barentssea", limits = c(3.8,13,78.8,79.2), round.lon = 2, round.lat = 1) +
  geom_scatterpie(aes(x = lon.utm, y = lat.utm, group = ID, r = 100*Total),
                  data = x, cols = species, size = 0.1) + scale_fill_discrete(name = "Species",
                                                                              breaks = species, labels = parse(text = paste0("italic(" , sub("*\\.", "~", species), ")")))

#######################################################################################
#######################################################################################


#######################################################################################

#         MAPAS COMPLEMENTARES/APOIO para as figuras do scatterpie.

# Area interna - Kongsfjorden 

basemap("kongsfjorden", limits = c(11.9,12.6,78.8,79.1), bathymetry = TRUE, currents = T, current.size = "scaled")

# Area externa - Kongsfjorden and Fram Strait

basemap("barentssea", bathymetry = TRUE, currents = TRUE, limits = c(3.8,13,78.8,79.2), current.size = "scaled")









#######################################################################################
#######################################################################################

# Example
# load data
getwd()
setwd("~/Documents/Documentos")

# read data_table 
sctp_kongsfjorden_03 <- read.csv("sctp_kongsfjorden_03.csv")

x <- transform_coord(sctp_kongsfjorden_03, lon = "Longitude", lat = "Latitude", bind = TRUE)

species <- colnames(x)[!colnames(x) %in% c("lon.utm", "lat.utm", "ID",
                                           "Longitude", "Latitude", "Total")]
basemap("barentssea", limits = c(3.8,13,78.8,79.2), round.lon = 2, round.lat = 1) +
  geom_scatterpie(aes(x = lon.utm, y = lat.utm, group = ID, r = 100*Total),
                  data = x, cols = species, size = 0.1) + scale_fill_discrete(name = "Species",
                                                                              breaks = species, labels = parse(text = paste0("italic(" , sub("*\\.", "~", species), ")")))

basemap("kongsfjorden", limits = c(10,13,78.8,79.2), round.lon = 2, round.lat = 1) +
  geom_scatterpie(aes(x = lon.utm, y = lat.utm, group = ID, r = 100*Total),
                  data = x, cols = species, size = 0.1) + scale_fill_discrete(name = "Species",
                                                                              breaks = species, labels = parse(text = paste0("italic(" , sub("*\\.", "~", species), ")")))
# Olhar no template do endereço: 
# local: /home/egon/Documents/Documentos/sctp_kongsfjorden_03.csv
# local do codigo: /home/egon/Documents/Documentos/THESIS/Code_2021/R/Plot_Svalbard
