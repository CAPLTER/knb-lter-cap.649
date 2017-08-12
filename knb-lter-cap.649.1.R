
# README ----

# reml slots ----
getSlots("dataset")
  getSlots("distribution")
  getSlots("keywordSet")
    getSlots("keyword")
getSlots("dataTable")
getSlots("physical")
  getSlots("dataFormat")
    getSlots("textFormat")
  getSlots("size")
  getSlots("distribution")
    getSlots("online")
      getSlots("url")
getSlots("additionalInfo")
  getSlots("section")
  getSlots("para")
getSlots("metadataProvider")
  getSlots("individualName")
  getSlots("userId")
getSlots("creator")
  getSlots("individualName")
  getSlots("userId")

# libraries ----
library(EML)
library(RPostgreSQL)
library(RMySQL)
library(tidyverse)
library(tools)
library(readr)
library(readxl)
library(magrittr)

# reml-helper-functions ----
# source('~/localRepos/reml-helper-tools/createdataTableFn.R')
source('~/localRepos/reml-helper-tools/writeAttributesFn.R')
source('~/localRepos/reml-helper-tools/createDataTableFromFileFn.R')
source('~/localRepos/reml-helper-tools/createKMLFn.R')
source('~/localRepos/reml-helper-tools/address_publisher_contact_language_rights.R')
source('~/localRepos/reml-helper-tools/createOtherEntityFn.R')
source('~/localRepos/reml-helper-tools/createPeople.R')
source('~/localRepos/reml-helper-tools/createFactorsDataframe.R')

# DB connections ----

source('~/Documents/localSettings/pg_prod.R')
source('~/Documents/localSettings/mysql_prod.R')
  
# dataset details to set first ----
projectid <- 649
packageIdent <- 'knb-lter-cap.649.1'
pubDate <- '2017-06-06'

# data entity ----

# CR1000_EC
OPEC <- dbGetQuery(pg_prod, '
SELECT 
  ec.date_time,
  --ec.record,
  --ec.measurement_id,
  m.observation,
  ec.value
FROM fluxtower.cr1000ec ec
JOIN fluxtower.measurements m ON (ec.measurement_id = m.id)
ORDER BY ec.measurement_id, ec.date_time;')

OPEC %<>% 
  spread(key = observation, value = value)

writeAttributes(OPEC) # write data frame attributes to a csv in current dir to edit metadata
OPEC_desc <- "Open Path Eddy Covariance (OPEC) data, inlcuding gas analyzer, 3D sonic anemometer, and temperature and relative humidity sensor data measured at the CAP LTER flux tower located in the west Phoenix, AZ neighborhood of Maryvale"

# create data table based on metadata provided in the companion csv
# use createdataTableFn() if attributes and classes are to be passed directly
OPEC_DT <- createDTFF(dfname = OPEC,
                      description = OPEC_desc)

# CR23X
radiometer_rain <- dbGetQuery(pg_prod, '
SELECT 
  cr23x.date_time,
  --ec.record,
  --ec.measurement_id,
  m.observation,
  cr23x.value
FROM fluxtower.cr23x
JOIN fluxtower.measurements m ON (cr23x.measurement_id = m.id)
ORDER BY cr23x.measurement_id, cr23x.date_time;')

radiometer_rain %<>% 
  spread(key = observation, value = value)

writeAttributes(radiometer_rain) # write data frame attributes to a csv in current dir to edit metadata
radiometer_rain_desc <- "radiometer and rain gauge (30-minute averages) data measured at the CAP LTER flux tower located in the west Phoenix, AZ neighborhood of Maryvale"

# create data table based on metadata provided in the companion csv
# use createdataTableFn() if attributes and classes are to be passed directly
radiometer_rain_DT <- createDTFF(dfname = radiometer_rain,
                                 description = radiometer_rain_desc)


# CR1000_Soil
groundSensors <- dbGetQuery(pg_prod, '
SELECT 
  cr1000soil.date_time,
  --ec.record,
  --ec.measurement_id,
  m.observation,
  cr1000soil.value
FROM fluxtower.cr1000soil
JOIN fluxtower.measurements m ON (cr1000soil.measurement_id = m.id)
ORDER BY cr1000soil.measurement_id, cr1000soil.date_time;')

groundSensors %<>% 
  spread(key = observation, value = value)

writeAttributes(groundSensors) # write data frame attributes to a csv in current dir to edit metadata
groundSensors_desc <- "data (30-minute averages) from 3 soil moisture sensors, 4 soil temperature probes, and 2 heat flux plates buried at multiple depths at the CAP LTER flux tower located in the west Phoenix, AZ neighborhood of Maryvale"

# create data table based on metadata provided in the companion csv
# use createdataTableFn() if attributes and classes are to be passed directly
groundSensors_DT <- createDTFF(dfname = groundSensors,
                               description = groundSensors_desc)


# maintenance log
# log exported (or, maybe, copied) from confluence
# maintenance_log <- read_csv('maintenanceLogFromConfluence.csv')

# manually add new entries (there are so few that it is easy to do this manually)
# in the future, get the base file from the DB !!!
maintenance_log <- maintenanceLogFromConfluence %>% 
  add_row(date = '2017-06-28', action = 'data retrieval') %>% 
  add_row(date = '2017-07-27', action = 'data retrieval')

writeAttributesEx(maintenance_log) # write data frame attributes to a csv in current dir to edit metadata
maintenance_log_desc <- "log of maintenance activity at the CAP LTER flux tower located in the west Phoenix, AZ neighborhood of Maryvale"

# create data table based on metadata provided in the companion csv
# use createdataTableFn() if attributes and classes are to be passed directly
maintenance_log_DT <- createDTFF(dfname = maintenance_log,
                                 description = maintenance_log_desc)

bucketlist()
put_object(file = '649_maintenance_log_dd68e293482738ac6f05303d473687a2.csv', object = '/datasets/cap/649_maintenance_log_dd68e293482738ac6f05303d473687a2.csv', bucket = 'gios-data')

# title and abstract ----
title <- 'Long-term monitoring of micrometeorological conditions at the CAP LTER flux tower located in the west Phoenix, AZ neighborhood of Maryvale, ongoing since 2010'

# abstract from file or directly as text
# abstract <- as(set_TextType("abstract_as_md_file.md"), "abstract") 
abstract <- 'The CAP LTER maintains a 23 m urban eddy flux tower in the west Phoenix, AZ neighborhood of Maryvale (-112.1426 W, +33.4838 N). The tower is instrumented for long-term measurement of the covariance of turbulent eddy and radiative fluxes for the purposes of urban micrometeorological research. Additional micrometerological parameters, such as precipitation, are also measured. Select soil parameters were measured from 2012 through 2016. Eddy covariance data are collected and stored at two temporal resolutions: 10 Hz and 30-minute averages. Data presented here includes only 30-minute averages. Owing to large volumes, 10 Hz data are avialable only by request to the CAP LTER Information Manager (caplter.data@asu.edu).'


# people ----

winstonChow <- addCreator('w', 'chow')
danChilders <- addCreator('d', 'childers')

creators <- c(as(winstonChow, 'creator'),
              as(danChilders, 'creator'))

stevanEarl <- addMetadataProvider('s', 'earl')
winstonChow <- addMetadataProvider('w', 'chow')
tomVolo <- addMetadataProvider('t', 'volo')

metadataProvider <-c(as(winstonChow, 'metadataProvider'),
                     as(tomVolo, 'metadataProvider'),
                     as(stevanEarl, 'metadataProvider'))


# keywords ----

# CAP IRTs for reference: https://sustainability.asu.edu/caplter/research/
# be sure to include these as appropriate

keywordSet <-
  c(new("keywordSet",
        keywordThesaurus = "LTER controlled vocabulary",
        keyword =  c("urban",
                     "eddy covariance",
                     "weather",
                     "evaporation",
                     "climate")),
    new("keywordSet",
        keywordThesaurus = "LTER core areas",
        keyword =  c("climate and heat",
                     "land use and land cover change",
                     "human-environment interactions")),
    new("keywordSet",
        keywordThesaurus = "Creator Defined Keyword Set",
        keyword =  c("surface energy balance")),
    new("keywordSet",
        keywordThesaurus = "CAPLTER Keyword Set List",
        keyword =  c("cap lter",
                     "cap",
                     "caplter",
                     "central arizona phoenix long term ecological research",
                     "arizona",
                     "az",
                     "arid land"))
    )

# methods and coverages ----
methods <- set_methods("flux_tower_methods.md")

# if relevant, pulling dates from a DB is nice
# begindate <- dbGetQuery(con, "SELECT MIN(sample_date) AS date FROM database.table;")
# begindate <- begindate$date

begindate <- "2010-09-01"
enddate <- max(newDataUpload$date_time)
enddate <- format(enddate, format = "%Y-%m-%d") 
geographicDescription <- "CAP LTER study area"
coverage <- set_coverage(begin = begindate,
                         end = enddate,
                         geographicDescription = geographicDescription,
                         west = -112.1426, east = -112.1426,
                         north = +33.4838, south = +33.4838)

# construct the dataset ----

# address, publisher, contact, and rights come from a sourced file

# XML DISTRUBUTION
  xml_url <- new("online",
                 onlineDescription = "CAPLTER Metadata URL",
                 url = paste0("https://sustainability.asu.edu/caplter/data/data-catalog/view/", packageIdent, "/xml/"))
metadata_dist <- new("distribution",
                 online = xml_url)

# DATASET

# full data sets
dataset <- new("dataset",
               title = title,
               creator = creators,
               pubDate = pubDate,
               metadataProvider = metadataProvider,
               # associatedParty = associatedParty,
               intellectualRights = rights,
               abstract = abstract,
               keywordSet = keywordSet,
               coverage = coverage,
               contact = contact,
               methods = methods,
               distribution = metadata_dist,
               dataTable = c(OPEC_DT,
                             radiometer_rain_DT,
                             groundSensors_DT,
                             maintenance_log_DT))
               # otherEntity = c(core_arthropod_locations)) # if other entity is relevant
# ls(pattern= "_DT") # can help to pull out DTs

# updates
dataset <- new("dataset",
               dataTable = c(OPEC_DT,
                             maintenance_log_DT))

# ls(pattern= "_DT") # can help to pull out DTs

# construct the eml ----

# ACCESS
allow_cap <- new("allow",
                 principal = "uid=CAP,o=LTER,dc=ecoinformatics,dc=org",
                 permission = "all")
allow_public <- new("allow",
                    principal = "public",
                    permission = "read")
lter_access <- new("access",
                   authSystem = "knb",
                   order = "allowFirst",
                   scope = "document",
                   allow = c(allow_cap,
                             allow_public))

# CUSTOM UNITS
# standardUnits <- get_unitList()
# unique(standardUnits$unitTypes$id) # unique unit types

custom_units <- rbind(
  data.frame(id = "wattPerMeterSquared",
             unitType = "irradiance",
             parentSI = "wattPerMeterSquared",
             multiplierToSI = 1,
             description = "radiant flux received by a surface per unit area"),
  data.frame(id = "gramPerMeterCubed",
             unitType = "density",
             parentSI = "kilogramPerCubicMeter",
             multiplierToSI = 0.001,
             description = "mass in grams divided by volume in cubic meters"),
  data.frame(id = "milligramsPerMeterSquaredPerSecond",
             unitType = "arealMassDensityRate",
             parentSI = "kilogramsPerMeterSquaredPerSecond",
             multiplierToSI = 0.000001,
             description = "rate of mass flow per unit area in units of milligrams per meter squared per second"),
  data.frame(id = "gramsPerMeterSquaredPerSecond",
             unitType = "arealMassDensityRate",
             parentSI = "kilogramsPerMeterSquaredPerSecond",
             multiplierToSI = 0.001,
             description = "rate of mass flow per unit area in units of grams per meter squared per second"),
  data.frame(id = "meterSquaredPerSecondSquared",
             unitType = "unknown",
             parentSI = "unknown",
             multiplierToSI = "unknown",
             description = "covariance of N-S (metersPerSecond) and E-W (metersPerSecond) wind speeds"),
  data.frame(id = "meterCelsiusPerSecond",
             unitType = "unknown",
             parentSI = "unknown",
             multiplierToSI = "unknown",
             description = "covariance of virtual temperature (celsius) and wind speed (metersPerSecond) "))
unitList <- set_unitList(custom_units)

eml <- new("eml",
           packageId = packageIdent,
           scope = "system",
           system = "knb",
           access = lter_access,
           dataset = dataset,
           additionalMetadata = as(unitList, "additionalMetadata"))

# write the xml to file ----
write_eml(eml, "knb-lter-cap.649.1.xml")
write_eml(dataset, "updates_649.xml")

# use Tom's metadata to populate attr files (a one-time need) ----
# get Tom's descriptions from the database
analytes <- dbGetQuery(pg_prod, 'SELECT * FROM fluxtower.measurements;')

# read in the CR100_EC attrs producted by the modified writeAttributesFn and merge with Tom's
ecattrs <- read_csv('OPEC_attrs.csv')
ecattrs %<>%
  left_join(analytes[,c("observation", "units", "decscription")], by = c("attributeName" = "observation")) %>% 
  mutate(missingValueCode = replace(missingValueCode, !is.na(missingValueCodeExplanation), "NA")) %>% 
  select(-attributeDefinition,
         -unit) %>% 
  select(attributeName,
         formatString,
         unit = units,
         numberType,
         definition,
         attributeDefinition = decscription,
         columnClasses,
         missingValueCode,
         missingValueCodeExplanation)

write_csv(ecattrs, 'OPEC_attrs.csv', na = "")

(meters * celsius)/second

# read in the CR23X attrs producted by the modified writeAttributesFn and merge with Tom's
cr23xattrs <- read_csv('radiometer_rain_attrs.csv')
cr23xattrs %<>%
  left_join(analytes[,c("observation", "units", "decscription")], by = c("attributeName" = "observation")) %>% 
  mutate(missingValueCode = replace(missingValueCode, !is.na(missingValueCodeExplanation), "NA")) %>% 
  select(-attributeDefinition,
         -unit) %>% 
  select(attributeName,
         formatString,
         unit = units,
         numberType,
         definition,
         attributeDefinition = decscription,
         columnClasses,
         missingValueCode,
         missingValueCodeExplanation)

write_csv(cr23xattrs, 'radiometer_rain_attrs.csv', na = "")

# read in the CR1000_Soil attrs producted by the modified writeAttributesFn and merge with Tom's
soil_attrs <- read_csv('groundSensors_attrs.csv')
soil_attrs %<>%
  left_join(analytes[,c("observation", "units", "decscription")], by = c("attributeName" = "observation")) %>% 
  mutate(missingValueCode = replace(missingValueCode, !is.na(missingValueCodeExplanation), "NA")) %>% 
  select(-attributeDefinition,
         -unit) %>% 
  select(attributeName,
         formatString,
         unit = units,
         numberType,
         definition,
         attributeDefinition = decscription,
         columnClasses,
         missingValueCode,
         missingValueCodeExplanation)

write_csv(soil_attrs, 'groundSensors_attrs.csv', na = "")

