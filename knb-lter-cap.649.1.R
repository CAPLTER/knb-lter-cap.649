
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

# dataset details to set first ----
projectid <- 649
packageIdent <- 'knb-lter-cap.649.1'
pubDate <- '2017-05-31'

# data entity ----

SELECT 
ec.date_time,
--ec.record,
--ec.measurement_id,
m.observation,
ec.value
FROM fluxtower.cr1000ec ec
JOIN fluxtower.measurements m ON (ec.measurement_id = measurements.id)
ORDER BY ec.measurement_id, ec.date_time;

# data processing
# data_frame_name[data_frame_name == ''] <- NA

# see comments in createdataTableFn.R for doing this piece-by-piece outside of functions

writeAttributes(dataframe) # write data frame attributes to a csv in current dir to edit metadata
dataframe_desc <- "dataframe description"

# address factors if needed
reach <- c(Tonto = "Salt River, Tonto National Forest, near Usery Road",
           BM = "Baseline and Meridian Wildlife Area")
urbanized <- c(urban = "in urban area",
               NonUrban = "outside urban area")
restored <- c(Restored = "site received active restoration",
              NotRestored = "site has not been restored")

dataframe_factors <- factorsToFrame(dataframe)

# create data table based on metadata provided in the companion csv
# use createdataTableFn() if attributes and classes are to be passed directly
dataframe_DT <- createDTFF(dfname = dataframe,
                           # factors = dataframe_factors,
                           description = dataframe_desc)


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
