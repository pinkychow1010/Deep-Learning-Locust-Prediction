# This script aims to generate and manipulate the data inside shapefile 
# for creating sample points to further generate training and testing data
# in the Google Earth Engine

# Import geospatial libraries
library(rgdal)
library(sf)
library(raster)
library(dplyr)

### ASSIGN CRS ###
# Read shapefile
shape <- read_sf(dsn = "locust_pt_clean.shp")

# Convert to sp object
pts <- as_Spatial(shape)

# Assign crs
st_crs(shape) = 4326

### Check csv ###
# write shapefile
st_write(shape, "C:/Users/Admin/Desktop/data/locust_pt_4326.shp")

# Read csv
points <- read.csv("C:/Users/Admin/Desktop/data/locust_points.csv",
                   stringsAsFactors = FALSE)

# Check csv data
str(points)

### Remove unneeded columns ###
# Read shapefile
pts <- readOGR(dsn = "C:/Users/Admin/Desktop/data/locust_datapoint.shp")

# Clean columns
pts_clean <- pts[, -(6:149)]
pts_clean

# Reset crs
proj4string(pts_clean) <- CRS("+init=epsg:4326")

# Write file
writeOGR(obj=pts_clean, 
         dsn="C:/Users/Admin/Desktop/data/locust_datapoint_clean.shp", 
         layer="locust_point", driver="ESRI Shapefile")

### Data Spliting ###

# Read shapefile
pts <- readOGR(dsn = "C:/Users/Admin/Desktop/data/datapoint_00_05.shp")

# to sf object
pts <- st_as_sf(pts)

# Check class
present <- pts %>%
  filter(PRESENCE == 1)
present

absent <- pts %>%
  filter(PRESENCE == 0)
absent

# Filter data to specific year
pts <- pts %>% 
  filter(Year == 2005)

# Convert back to sp object
pts <- as_Spatial(pts)

# Assign crs
proj4string(pts) <- CRS("+init=epsg:4326")

# Write file
writeOGR(obj=pts, 
         dsn="C:/Users/Admin/Desktop/data/datapoint_04.shp", 
         layer="locust_point", driver="ESRI Shapefile")
