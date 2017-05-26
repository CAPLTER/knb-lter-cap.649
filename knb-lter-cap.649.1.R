
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
library("EML")
library('RPostgreSQL')
library('RMySQL')
library('tidyverse')
library("tools")
library("readr")
library("readxl")
library("magrittr")

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
  
# dataset details to set first ----
projectid <- 649
packageIdent <- 'knb-lter-cap.649.1'
pubDate <- '2017-05-31'

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
OPEC_desc <- "this file contains Open Path Eddy Covariance (OPEC) data, inlcuding gas analyzer, 3D sonic anemometer, and temperature and relative humidity sensor data measured at the the CAP LTER flux tower located in the west Phoenix, AZ neighborhood of Maryvale"

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
radiometer_rain_desc <- "this file contains radiometer and rain gauge (30-minute averages) data measured at the the CAP LTER flux tower located in the west Phoenix, AZ neighborhood of Maryvale"

# create data table based on metadata provided in the companion csv
# use createdataTableFn() if attributes and classes are to be passed directly
OPEC_DT <- createDTFF(dfname = radiometer_rain,
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
groundSensors_desc <- "this file contains data (30-minute averages) from 3 soil moisture sensors, 4 soil temperature probes, and 2 heat flux plates buried at multiple depths at the the CAP LTER flux tower located in the west Phoenix, AZ neighborhood of Maryvale"

# create data table based on metadata provided in the companion csv
# use createdataTableFn() if attributes and classes are to be passed directly
OPEC_DT <- createDTFF(dfname = radiometer_rain,
                      description = radiometer_rain_desc)


# title and abstract ----
title <- 'title of data set'

# abstract from file or directly as text
abstract <- as(set_TextType("abstract_as_md_file.md"), "abstract") 
abstract <- 'abstract text'


# people ----

nancyGrimm <- addCreator('n', 'grimm')
danChilders <- addCreator('d', 'childers')
stanFaeth <- addAssocParty('s', 'faeth', 'Former Associate of Study')
markHostetler <- addAssocParty('m', 'hostetler', 'Former Associate of Study')
nancyMcintyre <- addAssocParty('n', 'mcintyre', 'Former Associate of Study')
eyalShochat <- addAssocParty('e', 'shochat', 'Former Associate of Study')
stevanEarl <- addMetadataProvider('s', 'earl')

creators <- c(as(nancyGrimm, 'creator'),
              as(danChilders, 'creator'))

metadataProvider <-c(as(stevanEarl, 'metadataProvider'))

associatedParty <- c(as(stanFaeth, 'associatedParty'),
                     as(markHostetler, 'associatedParty'),
                     as(nancyMcintyre, 'associatedParty'),
                     as(eyalShochat, 'associatedParty'))

# keywords ----

# CAP IRTs for reference: https://sustainability.asu.edu/caplter/research/
# be sure to include these as appropriate

keywordSet <-
  c(new("keywordSet",
        keywordThesaurus = "LTER controlled vocabulary",
        keyword =  c("urban",
                     "dissolved organic carbon",
                     "total dissolved nitrogen")),
    new("keywordSet",
        keywordThesaurus = "LTER core areas",
        keyword =  c("disturbance patterns",
                     "movement of inorganic matter")),
    new("keywordSet",
        keywordThesaurus = "Creator Defined Keyword Set",
        keyword =  c("unlisted stuff",
                     "unlisted stuff")),
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
methods <- set_methods("methods_as_md_file.md")

# if relevant, pulling dates from a DB is nice
# begindate <- dbGetQuery(con, "SELECT MIN(sample_date) AS date FROM database.table;")
# begindate <- begindate$date

begindate <- "2005-11-05"
enddate <- "2015-12-15"
geographicDescription <- "CAP LTER study area"
coverage <- set_coverage(begin = begindate,
                         end = enddate,
                         sci_names = c("Salix spp",
                                       "Ambrosia deltoidea"),
                         geographicDescription = geographicDescription,
                         west = -111.949, east = -111.910,
                         north = +33.437, south = +33.430)

# construct the dataset ----

# address, publisher, contact, and rights come from a sourced file

# XML DISTRUBUTION
  xml_url <- new("online",
                 onlineDescription = "CAPLTER Metadata URL",
                 url = paste0("https://sustainability.asu.edu/caplter/data/data-catalog/view/", packageIdent, "/xml/"))
metadata_dist <- new("distribution",
                 online = xml_url)

# DATASET
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
               dataTable = c(first_DT,
                             second_DT))
               # otherEntity = c(core_arthropod_locations)) # if other entity is relevant

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
  data.frame(id = "microsiemenPerCentimeter",
             unitType = "conductance",
             parentSI = "siemen",
             multiplierToSI = 0.000001,
             description = "electric conductance of lake water in the units of microsiemenPerCentimeter"),
data.frame(id = "nephelometricTurbidityUnit",
           unitType = "unknown",
           parentSI = "unknown",
           multiplierToSI = 1,
           description = "(NTU) ratio of the amount of light transmitted straight through a water sample with the amount scattered at an angle of 90 degrees to one side"))
unitList <- set_unitList(custom_units)

eml <- new("eml",
           packageId = packageIdent,
           scope = "system",
           system = "knb",
           access = lter_access,
           dataset = dataset,
           additionalMetadata = as(unitList, "additionalMetadata"))

# write the xml to file ----
write_eml(eml, "out.xml")

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

