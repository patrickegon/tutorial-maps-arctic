require(tidyverse)
require(oce)
require(leaflet)
require(sf)

ctd = read.ctd("./ctd_rufiji/SBE19plus_01906740_2018_02_13_0885.cnv")
cast.locations = read_csv("./ctd_rufiji/Rufiji_cast.csv")

cast.locations%>%select(Time, Tide, Name, Lon, Lat)%>%sample_n(10)%>%
  knitr::kable("html",caption = "Location information of CTD casts done during the low and high Tide in Rufiji River",
               digits = 4, align = "c")%>%
  kableExtra::kable_styling(bootstrap_options = c("striped", "hover", "condensed", "responsive"))%>%
  kableExtra::column_spec(1:5,width = "8cm", color = 1)%>%
  kableExtra::add_header_above(c("Station Information" = 3, 
                                 "Location information" = 2))

ctd = ctd%>%ctdTrim(method = "downcast")%>%ctdDecimate(p = 0.1)
ctd[["latitude"]] = cast.locations$Lat[1]
ctd[["longitude"]] = cast.locations$Lon[1]

par(mfrow = c(1,2))
ctd%>%plot(which = 1)
ctd%>%plot(which = "map")

summary(ctd)

# Oce object tibble

ctd.tb = ctd@data%>%
  as_data_frame()

# Wrangle the data

ctd.tb = ctd.tb %>% 
  mutate(datetime = ctd@metadata$time, 
         lon = ctd@metadata$longitude,
         lat = ctd@metadata$latitude) %>% 
  separate(datetime, c("date", "time"), sep = " ")%>%
  select(date, time, lon,lat,pressure,temperature, salinity, oxygen, fluorescence)

# Plotting the Profiles
temp = ggplot(data = ctd.tb%>%na.omit(), 
              aes(x = temperature, y = pressure))+
  geom_path( col = "red")+
  scale_y_reverse(breaks = seq(0,7,1.5))+
  scale_x_continuous(breaks = seq(28.5,33,1.25), position = "top")+
  theme_bw()+
  theme(axis.text = element_text(size = 12, colour = 1),
        axis.title = element_text(size = 14, colour = 1))+
  labs(x = expression(~Temperature~(degree~C)), y = "Pressure[dbar]")


salinity = ggplot(data = ctd.tb%>%na.omit(), 
                  aes(x = salinity, y = pressure))+
  geom_path( col = "darkgreen")+
  scale_y_reverse(breaks = seq(0,7,1.5))+
  scale_x_continuous(breaks = seq(4,25,8), position = "top")+
  theme_bw()+
  theme(axis.text = element_text(size = 12, colour = 1),
        axis.title = element_text(size = 14, colour = 1))+
  labs(x = expression(~Practical~salinity),
       y = expression(~Pressure~(dbar)))

oxygen = ggplot(data = ctd.tb%>%na.omit(), 
                aes(x = oxygen, y = pressure))+
  geom_path( col = "blue")+
  scale_y_reverse(breaks = seq(0,7,1.5))+
  scale_x_continuous(breaks = seq(0,8,1.5), position = "top")+
  theme_bw()+
  theme(axis.text = element_text(size = 12, colour = 1),
        axis.title = element_text(size = 14, colour = 1))+
  labs(x = expression(~DO~(mgL^{-3})),
       y = expression(~Pressure~(dbar)))

cowplot::plot_grid(temp,salinity, oxygen, nrow = 1)

# Conclusion

# tz = st_read("./africa.shp")

ggplot()+
  geom_sf(data = tz, fill = "ivory", col = 1)+
  coord_sf(xlim = c(39.28, 39.4) , ylim = c(-7.77,-7.70))+
  geom_point(data = cast.locations%>%slice(1), aes(x = Lon, y = Lat), size = 6 )+
  geom_label(data = cast.locations%>%slice(1), 
             aes(x = Lon-0.006, y = Lat+0.006, label = Name))+
  theme_bw()+
  theme(axis.text = element_text(size = 12, colour = 1),
        panel.background = element_rect(fill = "lightblue"))+
  scale_x_continuous(breaks = c(39.3,39.39))+
  scale_y_continuous(breaks = c(-7.76,-7.71))+
  geom_text(aes(x = 39.35, y = -7.72, label = "Rufiji River Estuary"), col = "white", size = 5)+
  labs(x = "", y = "")+
  ggsn::scalebar(location = "bottomright", x.min = 39.3, x.max = 39.4, y.min = -7.765, y.max = -7.71, dist = 1.5, dd2km = TRUE, model = "WGS84", st.dist = 0.04, st.size = 4, height = 0.04)

