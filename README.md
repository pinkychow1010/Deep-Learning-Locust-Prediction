# DeepLearning_LocustPrediction
This is the EAGLE M.Sc. semester group project for the **[Deep Learning class](http://eagle-science.org/project/met4-advanced-programming-for-remote-sensing-and-gis/)**

### Predicting Locust Swarm in Ethiopia using Landsat series and short-term Climate Data
This project uses climate variables as the predictors for the occurence of locust outbreak in Ethiopia. Owing to the dependency of locust behaviors on weather condition, instead of average climate variables, weather parameters before and during the month of outbreak is considered to improve the accuracy of prediction.

Model: Convolutional Neural Network

Predictors: Landsat spectral signals, surface temperature (WorldClim), precipatation, DEM, soil temperature at different depths, soil moisture at different depths, wind direction etc., all in the month of locust outbreak.

Data Source: 
1) **[FAO Locust hub](https://locust-hub-hqfao.hub.arcgis.com/search?collection=Dataset)**
2) **[FLDAS](https://developers.google.com/earth-engine/datasets/catalog/NASA_FLDAS_NOAH01_C_GL_M_V001)** 
3) **[Landsat](https://landsat.gsfc.nasa.gov/)**
4) **[WorldClim](https://www.worldclim.org/)**

External resources of large data size can be found under the **[Google Drive](https://drive.google.com/drive/folders/1C75mPjOQSMDqTlL4uIVyNUhKx5qO2Bz8) (permission required)**.
