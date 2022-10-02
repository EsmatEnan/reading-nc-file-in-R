# Calling Dependencies

library(ncdf4)
library(fields)

# Reading the file
dat <- nc_open('D:\\DewanSirSeaData\\NewEnvironment\\All_Data\\PODAAC1950-2009\\CCAR_recon_sea_level_19500103_19591227_v1.nc')
# Opening and Exploring the file 
dat


latitude<-ncvar_get(dat,"lat") # Extracting latitude
longitude<-ncvar_get(dat,"lon") # Extracting longitude
ssha=ncvar_get(dat,"ssha") # Extracting the vraiable

#Plotting 
sea_H=ncvar_get(dat,"ssha", start=c(1,1,50),count=c(-1,-1,1))
image.plot(longitude,latitude,sea_H)



