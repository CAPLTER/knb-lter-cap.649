knb-lter-cap.649
================

## long-term monitoring: Maryvale flux tower

This repository houses the work flow for publishing long-term data from
the CAP LTER flux tower in Phoenix, AZ.

-   for project protocols see:
    [fluxtower\_protocol](https://github.com/CAPLTER/caplter-research-protocols/blob/master/FluxTower/FluxTower_Protocol.md)
-   for data uploading see:
    [fluxtower-data-processing](https://github.com/CAPLTER/fluxtower-data-processing)

## outline

-   [overview](#overview)
-   [maintenance schedule](#maintenance-schedule)
-   [instrumentation](#instrumentation)
-   [soil moisture calibration](#soil-moisture-calibration)
-   [tower metadata](#tower-metadata)
-   [maintenance log](#maintenance-log)

## overview

The CAP LTER maintains a flux tower to facilitate neighborhood-scale
investigations of atmospheric processes in a Phoenix, AZ suburb.
Capitalizing on comprehensive measurements of energy (heat and
radiation) and matter (water and carbon dioxide) exchanges between the
atmosphere and the urban surface, this project adds significantly to
research investigating how urbanization affects local weather, climate,
and air quality. Results of this study are contributing greatly to our
understanding of climate issues pertinent to urban areas, such as the
urban heat island (UHI), climate forecasting, air quality, and yardscape
water demands and consumption. Further, this research provides critical
on-the-ground data required to validate regional climate models that
influence water management and emergency planning. Ultimately, these
data may contribute to urban design and management that aid the
conservation of resources and ameliorate temperature extremes.

An antenna-mounted array of sophisticated sensors measuring temperature,
humidity, and wind speed and direction at high temporal resolutions
facilitates the calculation of energy and material fluxes. This
antenna-based approach has been used for similar climate observation
campaigns worldwide, including those in Vancouver, Singapore, Basel,
Mexico City, Tucson, and London, but this is the first long-term urban
flux study in a large, arid city that we are aware. The residential
setting where the tower is positioned was selected on account of the
homogeneous building design (single-story, single-family, detached
dwellings) representative of many neighborhoods throughout the Valley,
and also due to generous technical and logistical assistance offered by
the Maricopa County Air Quality Department, which maintains a separate
air-quality monitoring station at the secure parcel. To avoid the
influence of localized turbulence and material fluxes created by
anomalous surface objects, the antenna extends vertically approximately
75 ft to sample neighborhood-scale fluxes. Though quite tall, the
slender tower profile is minimally disruptive to the skyline.

## maintenance schedule

| Month | Task                                       | Data download    |
|-------|--------------------------------------------|------------------|
| Jan   | clean radiometer                           | ≤ 1 mo. interval |
| Feb   |                                            | ≤ 1 mo. interval |
| Mar   |                                            | ≤ 1 mo. interval |
| Apr   | calibrate HMP & radiometer; calibrate IRGA | ≤ 1 mo. interval |
| May   |                                            | ≤ 1 mo. interval |
| Jun   |                                            | ≤ 1 mo. interval |
| Jul   | clean radiometer                           | ≤ 1 mo. interval |
| Aug   |                                            | ≤ 1 mo. interval |
| Sep   |                                            | ≤ 1 mo. interval |
| Oct   | clean radiometer; calibrate IRGA           | ≤ 1 mo. interval |
| Nov   |                                            | ≤ 1 mo. interval |
| Dec   |                                            | ≤ 1 mo. interval |

## instrumentation

<table>
<thead>
<tr>
<th style="text-align:left;">
instrument
</th>
<th style="text-align:left;">
type
</th>
<th style="text-align:left;">
mfg
</th>
<th style="text-align:left;">
asu\#
</th>
<th style="text-align:left;">
measures
</th>
<th style="text-align:left;">
calibrate?
</th>
<th style="text-align:left;">
frequency
</th>
<th style="text-align:left;">
last calibrated - notes
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
CSAT 3d sonic anemometer
</td>
<td style="text-align:left;">
sensor
</td>
<td style="text-align:left;">
Campbell
</td>
<td style="text-align:left;">
6161057
</td>
<td style="text-align:left;">
wind speed and direction
</td>
<td style="text-align:left;">
yes
</td>
<td style="text-align:left;">
3-5 y
</td>
<td style="text-align:left;">
2017-01-13
</td>
</tr>
<tr>
<td style="text-align:left;">
Licor LI7500 (IRGA)
</td>
<td style="text-align:left;">
sensor
</td>
<td style="text-align:left;">
Licor
</td>
<td style="text-align:left;">
6161058
</td>
<td style="text-align:left;">
CO2/H2O
</td>
<td style="text-align:left;">
yes
</td>
<td style="text-align:left;">
annually
</td>
<td style="text-align:left;">
2019-11-18
</td>
</tr>
<tr>
<td style="text-align:left;">
HC2S3 probe (replaced HMP45C)
</td>
<td style="text-align:left;">
sensor
</td>
<td style="text-align:left;">
Rotronic
</td>
<td style="text-align:left;">
None
</td>
<td style="text-align:left;">
Temperature and Relative Humidity
</td>
<td style="text-align:left;">
yes
</td>
<td style="text-align:left;">
every 2 years
</td>
<td style="text-align:left;">
2019-12-03
</td>
</tr>
<tr>
<td style="text-align:left;">
Net radiometer (NR01)
</td>
<td style="text-align:left;">
sensor
</td>
<td style="text-align:left;">
Hukseflux
</td>
<td style="text-align:left;">
None
</td>
<td style="text-align:left;">
Energy balance
</td>
<td style="text-align:left;">
yes
</td>
<td style="text-align:left;">
every 2 years
</td>
<td style="text-align:left;">
2019-08-05
</td>
</tr>
<tr>
<td style="text-align:left;">
TB4 Rain Gauge
</td>
<td style="text-align:left;">
sensor
</td>
<td style="text-align:left;">
Campbell
</td>
<td style="text-align:left;">
None
</td>
<td style="text-align:left;">
precipitation
</td>
<td style="text-align:left;">
no
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
factory calibrated so recalibration not necessary but annual field check
is recommended
</td>
</tr>
<tr>
<td style="text-align:left;">
CR23XPB
</td>
<td style="text-align:left;">
logger
</td>
<td style="text-align:left;">
Campbell
</td>
<td style="text-align:left;">
6126596
</td>
<td style="text-align:left;">
radiation sensors and rain gage
</td>
<td style="text-align:left;">
yes
</td>
<td style="text-align:left;">
every 3 y per Campbell but every few years per E. Vivoni
</td>
<td style="text-align:left;">
2020-01-24
</td>
</tr>
<tr>
<td style="text-align:left;">
CR1000
</td>
<td style="text-align:left;">
logger
</td>
<td style="text-align:left;">
Campbell
</td>
<td style="text-align:left;">
Unknown
</td>
<td style="text-align:left;">
eddy flux sensors
</td>
<td style="text-align:left;">
yes
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
2020-01-24
</td>
</tr>
<tr>
<td style="text-align:left;">
CR1000\_soil
</td>
<td style="text-align:left;">
logger
</td>
<td style="text-align:left;">
Campbell
</td>
<td style="text-align:left;">
Unknown
</td>
<td style="text-align:left;">
soil sensors
</td>
<td style="text-align:left;">
yes
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
not deployed
</td>
</tr>
</tbody>
</table>

## soil moisture calibration

*ASU Hydrology Laboratory and CAP LTER*

*Maryvale Soil Moisture Calibration Documentation*

I. Overview

In January 2012, the site of the Maryvale (WPHX) flux tower was
instrumented with three CS-616 Water Content Reflectometers, measuring
volumetric water content (m3/m3) of the soil at 5, 15, and 30 cm. The
soil moisture values seen are suspiciously high, with a maximum value of
nearly 0.8, while the maximum value at saturation should equal the
porosity of the soil (\~0.4). This is possible due to the high clay
composition of the soil; the default calibration equations for the
CS-616 assumes clay content under 30%. This document therefore details a
laboratory experiment conducted to check the readings of the CS-616
against measurements taken from soil samples, and thereby create a
calibration equation specific to the soil at the Maryvale site.

1.  Experimental Setup

A large hole, approximately 35 cm deep, was dug at the Maryvale site
near the location of the installed soil moisture sensors. The vertical
column was mixed thoroughly to simulate the mixed soil placed on top of
the soil moisture sensors as they were being buried. 10 cm of the mixed
soil was then placed in each of 7 medium-sized gray plastic bins, tamped
periodically by hand and by foot. In one of the seven, a CS-616 was
installed at 5 cm. It is assumed that all seven bins have roughly the
same amount of soil, and the soil is of approximately the same
composition across the seven, and this composition is similar to the
soil column of the installed field sensors.

Water was added to the seven bins until each was saturated. They were
allowed to equilibrate, and then resaturated. This process was repeated
until each bin showed significant standing water after equilibration.
Then water was added so that each bin had exactly 10 mm of standing
water. The assumption here is that all seven bins will be at saturation
and will dry out at the same rate.

The CS-616 in one of the seven bins was connected to a CS800 to read the
data. This bin is not disturbed in the experiment, but instead samples
are taken from the other six bins, under the assumption that soil
moisture values will be the same in all the bins at any given time. This
avoids experimental error from removing soil from the bin being measured
for purposes of measurement.

1.  Taking Measurements

Periodically, a soil moisture sample is taken from the middle of a bin
and pressed into a sample tin such that the soil is level at the top of
the tin. The full tin is weighed, then placed in the oven to dry, and
the volumetric soil moisture from the CS-616 is noted. The tin is then
weighed again daily until the mass no longer decreases. The first
measurement is taken while the soil is still saturated. Other necessary
measurements include the mass of the empty tin, and its volume, as
determined by filling it with water and weighing it. After a sample is
taken from a bin, dried, and measured, the soil in the tin is returned
to the same bin.

1.  Calculations

-   Mass of Empty Tin: 21 g
-   Mass of Tin filled with Water: 155 g
-   Mass of Water to Fill Tin: 134 g
-   Volume of Tin: 134 cm3 (using density of water = 1 kg/L = 1 g/cm3)
-   Volumetric water content is defined as the volume of the water in
    the sample divided by the total volume of the sample. Since the tin
    is filled when the sample is taken, the total volume is known. The
    volume of the water is calculated as the difference between the mass
    of the tin initially and after drying, divided by the density of
    water. θ=minitial-mdriedVtinρw

| Initial Mass (g) | Sensor Reading | Drying mass (g) | Dried mass (g) | Tin mass (g) | Tin Volume (mL) | Theta    |
|------------------|----------------|-----------------|----------------|--------------|-----------------|----------|
| 288              | 0.762          | 237             | 236            | 21           | 134             | 0.38806  |
| 280              | 0.679          | 230             | 230            | 21           | 134             | 0.373134 |
| 272              | 0.593          | 250             | 250            | 21           | 134             | 0.164179 |
| 255              | 0.42           | 245             | 242            | 21           | 134             | 0.097015 |
| 258              | 0.314          | 240             | 240            | 21           | 134             | 0.134328 |
| 263              | 0.263          | 254             | 254            | 21           | 134             | 0.067164 |

V. Conclusions and Future Work

The following figure shows these theta values plotted against those
taken from the sensor. A linear fit gives a relationship of θactual =
0.6239 θsensor – 0.1112. It would likely be a good idea to run the
entire experiment several more times, mixing the order of the bins to
reduce error resulting from differences among the six soil samples. This
would still leave the experiment prone to error resulting from a
difference between the sample with the sensor and all the others. Moving
the sensor to a different bin would alleviate this problem.

## tower metadata

*August 2014*

*Thomas J. Volo*

This volume contains data from the West Phoenix/Maryvale urban eddy flux
tower from its installation in December 2011 through August 27, 2014.
The 23 m (73 ft) tower is located at -112.1426 W, +33.4838 N, in a xeric
residential neighborhood in Maryvale, AZ, within the CAP-LTER study
area. The tower is instrumented for long-term measurement of the
covariance of turbulent eddy and radiative fluxes for the purposes of
urban micrometeorological research. These are raw data and have not been
processed at all. Winston Chow, who established the tower as a post-doc
at ASU, has processed some data (2011-2012) and has a publication based
on it (Chow et al., International Journal of Climatology, 2014).Those
processed data are stored elsewhere. Darrel Jenerette, a CAP-LTER
scientist at UC-Riverside, has a copy of this raw data and has committed
to processing it. An ftp has been established for sending more recent
data to Dr. Jenerette, and for transferring the processed data back to
ASU for publication.

**The tower has three data loggers, and this volume has a folder for
each. The instruments and data associated with each logger are
summarized below.**

| Data Logger  | Instruments                                  | Data                                                                                        |
|--------------|----------------------------------------------|---------------------------------------------------------------------------------------------|
| CR23X        | Hukseflux NR01 four-component net radiometer | incoming and outgoing short- and long-wave radiation (W/m2)                                 |
|              | TB4 tipping-bucket rain gauge                | rainfall (mm)                                                                               |
| CR1000\_Soil | CS-616 water content reflectometers (3)      | volumetric soil moisture (m3/m3) at 5, 15, and 30 cm                                        |
|              | Hukseflux HFP01-SC heat flux plates (2)      | soil heat flux (W/m2) (one HFP currently not operational and uninstalled, data shows “NAN”) |
|              | TCAV soil thermocouples (4)                  | soil temperature (° C)                                                                      |
| CR1000\_EC   | LI-7500 infrared gas analyzer (IRGA)         | CO2 and H2O concentrations (mg/m3, g/m3)                                                    |
|              | CSAT 3D sonic anemometer                     | three-directional wind speed (m/s)                                                          |
|              | HMP45C T/RH sensor                           | air temperature (°C) and relative humidity                                                  |

**CR23X: Radiometer, Rain Gauge (30 minute averages)**

| Data Table Label | Units               | Description                                                                  |
|------------------|---------------------|------------------------------------------------------------------------------|
| TIMESTAMP        | YYYY-MM-DD HH:MM:SS | logger timestamp                                                             |
| RECORD           | \-                  | record number                                                                |
| SR01\_up\_1\_AVG | W/m2                | upwelling shortwave radiation                                                |
| SR01\_dn\_2\_AVG | W/m2                | downwelling shortwave radiation                                              |
| IR01\_up\_3\_AVG | W/m2                | upwelling longwave (infrared) radiation                                      |
| IR01\_dn\_4\_AVG | W/m2                | downwelling longwave (infrared) radiation                                    |
| Temp\_c\_AVG     | °C                  | sensor temperature                                                           |
| Temp\_k\_AVG     | K                   | sensor temperature                                                           |
| Net\_Rs\_AVG     | W/m2                | net shortwave radiation                                                      |
| Net\_RI\_AVG     | W/m2                | net longwave (infrared) radiation                                            |
| Albedo\_AVG      | \-                  | shortwave surface albedo                                                     |
| Net\_total\_AVG  | W/m2                | net total radiation                                                          |
| IR01upCor\_AVG   | W/m2                | upwelling longwave radiation corrected for Boltzmann radiation from sensor   |
| IR-1dnCor\_AVG   | W/m2                | downwelling longwave radiation corrected for Boltzmann radiation from sensor |
| Rain\_mm\_TOT    | mm                  | total rainfall for 30 min period                                             |

**CR1000\_Soil: 3 soil moisture sensors, 4 soil temperature probes, 2
heat flux plates (30 minute averages)**

| Data Table Label | Units               | Description                                       |
|------------------|---------------------|---------------------------------------------------|
| TIMESTAMP        | YYYY-MM-DD HH:MM:SS | logger timestamp                                  |
| RECORD           | \-                  | record number                                     |
| VW\_AVG          | m3/m3               | volumetric water content, 5 cm                    |
| VW\_2\_AVG       | m3/m3               | volumetric water content, 15 cm                   |
| VW\_3\_AVG       | m3/m3               | volumetric water content, 30 cm                   |
| Temp\_C\_AVG     | °C                  | soil temperature, 2 cm                            |
| Temp\_C\_2\_AVG  | °C                  | soil temperature, 5 cm                            |
| Temp\_C\_3\_AVG  | °C                  | soil temperature, 15 cm                           |
| Temp\_C\_4\_AVG  | °C                  | soil temperature, 30 cm                           |
| PTemp\_C\_AVG    | °C                  | panel temperature                                 |
| shf\_Avg         | W/m2                | soil heat flux, under gravel                      |
| shf\_2\_Avg      | W/m2                | soil heat flux, under bare soil                   |
| Batt\_Volt\_Avg  | V                   | voltage of battery                                |
| PA\_uS\_Avg      | μs                  | sensor output period, 5 cm (used to calculate VW) |
| PA\_uS\_2\_Avg   | μs                  | sensor output period, 15 cm                       |
| PA\_uS\_3\_Avg   | μs                  | sensor output period, 30 cm                       |

**CR1000\_EC**: gas analyzer, 3D sonic anemometer, temperature/relative
humidity sensor

Data from this sensor is stored in two types of files: 10 Hz data and 30
min averages. Each of these comes in two formats: TOB1 binary format and
TOA5 readable format. The TOA5 files were converted from the TOB1 files,
so time periods should coincide between the two. Time periods between
the 10 Hz and 30 min data will not always coincide, since the data was
not always accessed by the same means, especially beginning in the
summer of 2014. CR1000\_EC 10 Hz data (“.ts” files)

| Data Table Label | Units                 | Description                         |
|------------------|-----------------------|-------------------------------------|
| TIMESTAMP        | YYYY-MM-DD HH:MM:SS.S | logger timestamp                    |
| RECORD           | \-                    | record number                       |
| Ux               | m/s                   | E  W wind speed                    |
| Uy               | m/s                   | N  S wind speed                    |
| Uz               | m/s                   | upward wind speed                   |
| Ts               | °C                    | virtual temperature from anemometer |
| co2              | mg/m3                 | CO2 concentration of air            |
| h2o              | g/m3                  | water vapor concentration of air    |
| press            | kPa                   | air pressure                        |
| diag\_csat       | \-                    | value for diagnosing CSAT problems  |
| t\_hmp           | °C                    | air temperature from T/RH sensor    |
| e\_hmp           | kPa                   | vapor pressure from T/RH sensor     |

CR1000\_EC 30 min data (“.flux” files)

| Data Table Label  | Units               | Description                                                       |
|-------------------|---------------------|-------------------------------------------------------------------|
| TIMESTAMP         | YYYY-MM-DD HH:MM:SS | logger timestamp                                                  |
| RECORD            | \-                  | record number                                                     |
| Hs                | W/m2                | Sensible heat flux using sonic temperature                        |
| Fc\_wpl           | mg/m2s              | CO2 flux with Webb correction term                                |
| LE\_wpl           | W/m2                | Latent heat flux with Webb correction term                        |
| Hc                | W/m2                | Sensible heat flux computed from Hs and LE\_wpl                   |
| tau               | kg/ms2              | momentum flux                                                     |
| u\_star           | m/s                 | friction velocity                                                 |
| Ts\_mean          | °C                  | average virtual temperature from anemometer                       |
| stdev\_Ts         | °C                  | standard deviation of Ts                                          |
| cov\_Ts\_Ux       | m°C/s               | covariance: Ts and Ux                                             |
| cov\_Ts\_Uy       | m °C/s              | covariance: Ts and Uy                                             |
| cov\_Ts\_Uz       | m °C/s              | covariance: Ts and Uz                                             |
| co2\_mean         | mg/m3               | average CO2 concentration                                         |
| stdev\_co2        | mg/m3               | standard deviation of CO2 concentration                           |
| cov\_co2\_Ux      | mg/m2s              | covariance: co2 and Ux                                            |
| cov\_co2\_Uy      | mg/m2s              | covariance: co2 and Uy                                            |
| cov\_co2\_Uz      | mg/m2s              | covariance: co2 and Uz                                            |
| h2o\_Avg          | g/m3                | average H2O concentration (IRGA)                                  |
| stdev\_h2o        | g/m3                | standard deviation of H2O concentration                           |
| cov\_h2o\_Ux      | g/m2s               | covariance: h2o and Ux                                            |
| cov\_h2o\_Uy      | g/m2s               | covariance: h2o and Uy                                            |
| cov\_h2o\_Uz      | g/m2s               | covariance: h2o and Uz                                            |
| Ux\_Avg           | m/s                 | average E  W wind speed                                          |
| stdev\_Ux         | m/s                 | standard deviation of E  W wind speed                            |
| cov\_Ux\_Uy       | (m/s)2              | covariance: Ux and Uy                                             |
| cov\_Ux\_Uz       | (m/s)2              | covariance: Ux and Uz                                             |
| Uy\_Avg           | m/s                 | average N  S wind speed                                          |
| stdev\_Uy         | m/s                 | standard deviation of N  S wind speed                            |
| cov\_Uy\_Uz       | (m/s)2              | covariance: Uy and Uz                                             |
| Uz\_Avg           | m/s                 | average upward wind speed                                         |
| stdev\_Uz         | m/s                 | standard deviation of upward wind speed                           |
| press\_mean       | kPa                 | mean air pressure                                                 |
| t\_hmp\_mean      | °C                  | mean air temperature from T/RH sensor                             |
| h2o\_hmp\_mean    | g/m3                | mean vapor density from T/RH sensor                               |
| rho\_a\_mean      | kg/m3               | mean air density                                                  |
| wnd\_dir\_compass | degrees             | wind direction (compass) corrected for azimuth                    |
| wnd\_dir\_csat3   | degrees             | wind direction with reference to CSAT field of view               |
| wnd\_spd          | m/s                 | mean wind speed                                                   |
| rslt\_wnd\_spd    | m/s                 | average wind speed in compass coordinate system                   |
| std\_wnd\_dir     | degrees             | standard deviation of wind direction in compass coordinate system |
| Fc\_irga          | mg/m2s              | CO2 flux without Webb correction term                             |
| LE\_irga          | W/m2                | latent heat flux without Webb correction term                     |
| co2\_wpl\_LE      | mg/m2s              | Webb correction term for CO2 flux due to latent heat flux         |
| co2\_wpl\_H       | mg/m2s              | Webb correction term for CO2 flux due to sensible heat flux       |
| h2o\_wpl\_LE      | W/m2                | Webb correction term for H2O flux due to latent heat flux         |
| h2o\_wpl\_H       | W/m2                | Webb correction term for H2O flux due to sensible heat flux       |
| n\_Tot            | samples             | number of samples in averaging period                             |
| csat\_warnings    | samples             | number of samples with CSAT flags                                 |
| irga\_warnings    | samples             | number of samples with IRGA flags                                 |
| del\_T\_f\_Tot    | samples             | number of samples with delta temperature flags                    |
| sig\_lck\_f\_Tot  | samples             | number of samples with poor signal lock flags                     |
| amp\_h\_f\_Tot    | samples             | number of samples with amplitude high flags                       |
| amp\_l\_f\_Tot    | samples             | number of samples with amplitude low flags                        |
| chopper\_f\_Tot   | samples             | number of samples with chopper warning flags                      |
| detector\_f\_Tot  | samples             | number of samples with detector warning flags                     |
| pll\_f\_Tot       | samples             | number of samples with PLL warning flags                          |
| sync\_f\_Tot      | samples             | number of samples with synchronization flags                      |
| agc\_Avg          | \-                  | automatic gain control                                            |
| panel\_temp\_Avg  | °C                  | datalogger panel temperature                                      |
| batt\_v\#olt\_Avg | V                   | battery voltage                                                   |

## maintenance log

    ## Warning: 2 parsing failures.
    ## row    col           expected actual                  file
    ## 109 action delimiter or quote      L 'maintenance_log.csv'
    ## 109 action delimiter or quote      d 'maintenance_log.csv'

<table>
<thead>
<tr>
<th style="text-align:left;">
date
</th>
<th style="text-align:left;">
action
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
2014-10-02
</td>
<td style="text-align:left;">
10 Hz data retrieval
</td>
</tr>
<tr>
<td style="text-align:left;">
2014-10-22
</td>
<td style="text-align:left;">
10 Hz data retrieval; unable to access radiometers this visit now
overdue
</td>
</tr>
<tr>
<td style="text-align:left;">
2014-11-25
</td>
<td style="text-align:left;">
10 Hz data retrieval; cleaned radiometers; HMP fell out of its housing
while raising - not addressed!
</td>
</tr>
<tr>
<td style="text-align:left;">
2014-11-26
</td>
<td style="text-align:left;">
HMP reinserted into sleeve on tower
</td>
</tr>
<tr>
<td style="text-align:left;">
2014-12-22
</td>
<td style="text-align:left;">
data retrieval; rewired HMP45
</td>
</tr>
<tr>
<td style="text-align:left;">
2015-01-21
</td>
<td style="text-align:left;">
data retrieval; rewired HMP45; cleaned radiometers
</td>
</tr>
<tr>
<td style="text-align:left;">
2015-02-21
</td>
<td style="text-align:left;">
data retrieval; cleaned radiometers
</td>
</tr>
<tr>
<td style="text-align:left;">
2015-03-22
</td>
<td style="text-align:left;">
data retrieval
</td>
</tr>
<tr>
<td style="text-align:left;">
2015-04-22
</td>
<td style="text-align:left;">
data retrieval; cleaned radiometers
</td>
</tr>
<tr>
<td style="text-align:left;">
2015-05-22
</td>
<td style="text-align:left;">
data retrieval; cables had come loose and were tangled in fence
</td>
</tr>
<tr>
<td style="text-align:left;">
2015-06-22
</td>
<td style="text-align:left;">
data retrieval
</td>
</tr>
<tr>
<td style="text-align:left;">
2015-07-15
</td>
<td style="text-align:left;">
HC2S3 probe purchased to replace HMP45C
</td>
</tr>
<tr>
<td style="text-align:left;">
2015-07-23
</td>
<td style="text-align:left;">
data retrieval
</td>
</tr>
<tr>
<td style="text-align:left;">
2015-08-07
</td>
<td style="text-align:left;">
cleaned radiometers; tried trouble shooting error messages; everything
looked normal
</td>
</tr>
<tr>
<td style="text-align:left;">
2015-08-22
</td>
<td style="text-align:left;">
data retrieval
</td>
</tr>
<tr>
<td style="text-align:left;">
2015-09-22
</td>
<td style="text-align:left;">
data retrieval
</td>
</tr>
<tr>
<td style="text-align:left;">
2015-10-25
</td>
<td style="text-align:left;">
data retrieval
</td>
</tr>
<tr>
<td style="text-align:left;">
2015-11-13
</td>
<td style="text-align:left;">
Licor LI-7500 calibrated
</td>
</tr>
<tr>
<td style="text-align:left;">
2015-11-17
</td>
<td style="text-align:left;">
reinstalled calibrated instrument; cleaned radiometers
</td>
</tr>
<tr>
<td style="text-align:left;">
2015-11-25
</td>
<td style="text-align:left;">
data retrieval
</td>
</tr>
<tr>
<td style="text-align:left;">
2015-12-22
</td>
<td style="text-align:left;">
data retrieval
</td>
</tr>
<tr>
<td style="text-align:left;">
2016-01-22
</td>
<td style="text-align:left;">
data retrieval
</td>
</tr>
<tr>
<td style="text-align:left;">
2016-02-22
</td>
<td style="text-align:left;">
data retrieval
</td>
</tr>
<tr>
<td style="text-align:left;">
2016-03-04
</td>
<td style="text-align:left;">
cleaned radiometers
</td>
</tr>
<tr>
<td style="text-align:left;">
2016-03-22
</td>
<td style="text-align:left;">
data retrieval
</td>
</tr>
<tr>
<td style="text-align:left;">
2016-04-23
</td>
<td style="text-align:left;">
data retrieval
</td>
</tr>
<tr>
<td style="text-align:left;">
2016-05-02
</td>
<td style="text-align:left;">
cables between data logger and soil sensors cut; as well as cable to the
HC2S3 probe
</td>
</tr>
<tr>
<td style="text-align:left;">
2016-05-05
</td>
<td style="text-align:left;">
dug up soil sensors
</td>
</tr>
<tr>
<td style="text-align:left;">
2016-05-22
</td>
<td style="text-align:left;">
data retrieval 7:20pm
</td>
</tr>
<tr>
<td style="text-align:left;">
2016-05-26
</td>
<td style="text-align:left;">
tower cranked down at 6pm
</td>
</tr>
<tr>
<td style="text-align:left;">
2016-05-27
</td>
<td style="text-align:left;">
HC2S3 cable replaced; tower cranked up at 9am; discovered that one of
the cables from the NR01 net radiometer had been disconnected (possible
during prior vandalism)
</td>
</tr>
<tr>
<td style="text-align:left;">
2016-06-22
</td>
<td style="text-align:left;">
data retrieval
</td>
</tr>
<tr>
<td style="text-align:left;">
2016-07-22
</td>
<td style="text-align:left;">
cleaned radiometers
</td>
</tr>
<tr>
<td style="text-align:left;">
2016-07-26
</td>
<td style="text-align:left;">
data retrieval
</td>
</tr>
<tr>
<td style="text-align:left;">
2016-08-22
</td>
<td style="text-align:left;">
data retrieval
</td>
</tr>
<tr>
<td style="text-align:left;">
2016-09-22
</td>
<td style="text-align:left;">
data retrieval 2:08pm
</td>
</tr>
<tr>
<td style="text-align:left;">
2016-10-21
</td>
<td style="text-align:left;">
sonic anemometer and radiometer removed from the flux tower to be sent
in for calibration next week. The IRGA and Temperature and Relative
humidity probe (HC2SC) are still attached; but we left the tower cranked
down; so they are measuring at a lower elevation (if that matters)
</td>
</tr>
<tr>
<td style="text-align:left;">
2016-10-21
</td>
<td style="text-align:left;">
data retrieval 12:10pm
</td>
</tr>
<tr>
<td style="text-align:left;">
2016-11-07
</td>
<td style="text-align:left;">
copied program from CR23X\_PB prior to removing CR23X\_PB and CR1000
data loggers for shipping and calibration
</td>
</tr>
<tr>
<td style="text-align:left;">
2016-11-18
</td>
<td style="text-align:left;">
Licor LI7500 removed from tower for calibration
</td>
</tr>
<tr>
<td style="text-align:left;">
2016-12-09
</td>
<td style="text-align:left;">
Licor LI7500 reinstalled on tower
</td>
</tr>
<tr>
<td style="text-align:left;">
2016-12-11
</td>
<td style="text-align:left;">
CR23X\_PB and CR1000(program uploaded) data loggers reinstalled and
wired.
</td>
</tr>
<tr>
<td style="text-align:left;">
2017-01-24
</td>
<td style="text-align:left;">
Re-installed the CSAT 3d sonic anemometer; and net radiometer
</td>
</tr>
<tr>
<td style="text-align:left;">
2017-01-26
</td>
<td style="text-align:left;">
re wired the net radiometer to CR23X\_PB
</td>
</tr>
<tr>
<td style="text-align:left;">
2017-01-30
</td>
<td style="text-align:left;">
CR23x\_pb program uploaded by Eli at \~14:00
</td>
</tr>
<tr>
<td style="text-align:left;">
2017-01-31
</td>
<td style="text-align:left;">
data retrieval
</td>
</tr>
<tr>
<td style="text-align:left;">
2017-02-06
</td>
<td style="text-align:left;">
4WPB100 Terminal Input Module installed on CR23X\_PB and tower raised
</td>
</tr>
<tr>
<td style="text-align:left;">
2017-02-28
</td>
<td style="text-align:left;">
data retrieval
</td>
</tr>
<tr>
<td style="text-align:left;">
2017-03-31
</td>
<td style="text-align:left;">
data retrieval. wires were loose due to wind. need to buy more Velcro
straps
</td>
</tr>
<tr>
<td style="text-align:left;">
2017-05-02
</td>
<td style="text-align:left;">
data retrieval
</td>
</tr>
<tr>
<td style="text-align:left;">
2017-05-30
</td>
<td style="text-align:left;">
data retrieval
</td>
</tr>
<tr>
<td style="text-align:left;">
2017-06-28
</td>
<td style="text-align:left;">
data retrieval
</td>
</tr>
<tr>
<td style="text-align:left;">
2017-07-27
</td>
<td style="text-align:left;">
data retrieval
</td>
</tr>
<tr>
<td style="text-align:left;">
2017-08-28
</td>
<td style="text-align:left;">
data retrieval
</td>
</tr>
<tr>
<td style="text-align:left;">
2017-09-28
</td>
<td style="text-align:left;">
data retrieval
</td>
</tr>
<tr>
<td style="text-align:left;">
2017-10-27
</td>
<td style="text-align:left;">
data retrieval
</td>
</tr>
<tr>
<td style="text-align:left;">
2017-11-29
</td>
<td style="text-align:left;">
data retrieval
</td>
</tr>
<tr>
<td style="text-align:left;">
2017-12-07
</td>
<td style="text-align:left;">
cleaned radiometer and removed HC2S3 sensor for recalibration with Chris
Sanchez. left tower cranked down to \~40’
</td>
</tr>
<tr>
<td style="text-align:left;">
2017-12-12
</td>
<td style="text-align:left;">
chris Sanchez climbed the tower and removed both the Licor li-7500 and
control box for calibration.
</td>
</tr>
<tr>
<td style="text-align:left;">
2017-12-20
</td>
<td style="text-align:left;">
Licor li-7500 and control box reinstalled
</td>
</tr>
<tr>
<td style="text-align:left;">
2017-12-22
</td>
<td style="text-align:left;">
data retrieval
</td>
</tr>
<tr>
<td style="text-align:left;">
2018-01-18
</td>
<td style="text-align:left;">
reinstalled HC2S3 sensor
</td>
</tr>
<tr>
<td style="text-align:left;">
2018-01-26
</td>
<td style="text-align:left;">
data retrieval; cleaned radiometers
</td>
</tr>
<tr>
<td style="text-align:left;">
2018-02-27
</td>
<td style="text-align:left;">
data retrieval; tower cranked back up to\~70’
</td>
</tr>
<tr>
<td style="text-align:left;">
2018-03-28
</td>
<td style="text-align:left;">
data retrieval
</td>
</tr>
<tr>
<td style="text-align:left;">
2018-04-30
</td>
<td style="text-align:left;">
data retrieval
</td>
</tr>
<tr>
<td style="text-align:left;">
2018-05-29
</td>
<td style="text-align:left;">
data retrieval; cleaned radiometers
</td>
</tr>
<tr>
<td style="text-align:left;">
2018-06-30
</td>
<td style="text-align:left;">
data retrieval
</td>
</tr>
<tr>
<td style="text-align:left;">
2018-07-30
</td>
<td style="text-align:left;">
data retrieval
</td>
</tr>
<tr>
<td style="text-align:left;">
2018-08-27
</td>
<td style="text-align:left;">
data retrieval
</td>
</tr>
<tr>
<td style="text-align:left;">
2018-09-30
</td>
<td style="text-align:left;">
data retrieval; cleaned radiometers
</td>
</tr>
<tr>
<td style="text-align:left;">
2018-10-29
</td>
<td style="text-align:left;">
data retrieval
</td>
</tr>
<tr>
<td style="text-align:left;">
2018-11-28
</td>
<td style="text-align:left;">
cleaned radiometers; Licor li-7500 and control box removed; power cable
to anemometer needs replacing: tower cranked down to \~40’
</td>
</tr>
<tr>
<td style="text-align:left;">
2018-11-29
</td>
<td style="text-align:left;">
data retrieval
</td>
</tr>
<tr>
<td style="text-align:left;">
2018-12-05
</td>
<td style="text-align:left;">
Licor li-7500 calibration
</td>
</tr>
<tr>
<td style="text-align:left;">
2018-12-13
</td>
<td style="text-align:left;">
Licor li-7500 and control box reinstalled; anemometer SDM/12v cable
detached both need to be sent into Cable for replacing
</td>
</tr>
<tr>
<td style="text-align:left;">
2018-12-21
</td>
<td style="text-align:left;">
data retrieval
</td>
</tr>
<tr>
<td style="text-align:left;">
2019-01-25
</td>
<td style="text-align:left;">
data retrieval
</td>
</tr>
<tr>
<td style="text-align:left;">
2019-02-11
</td>
<td style="text-align:left;">
anemometer SDM/12v cable replaced
</td>
</tr>
<tr>
<td style="text-align:left;">
2019-03-02
</td>
<td style="text-align:left;">
data retrieval
</td>
</tr>
<tr>
<td style="text-align:left;">
2019-04-01
</td>
<td style="text-align:left;">
data retrieval
</td>
</tr>
<tr>
<td style="text-align:left;">
2019-05-01
</td>
<td style="text-align:left;">
data retrieval; radiometers removed and shipped to Campbell Scientific
for calibration
</td>
</tr>
<tr>
<td style="text-align:left;">
2019-05-31
</td>
<td style="text-align:left;">
data retrieval
</td>
</tr>
<tr>
<td style="text-align:left;">
2019-07-01
</td>
<td style="text-align:left;">
data retrieval
</td>
</tr>
<tr>
<td style="text-align:left;">
2019-07-30
</td>
<td style="text-align:left;">
data retrieval
</td>
</tr>
<tr>
<td style="text-align:left;">
2019-08-28
</td>
<td style="text-align:left;">
data retrieval; radiometer install
</td>
</tr>
<tr>
<td style="text-align:left;">
2019-09-10
</td>
<td style="text-align:left;">
data retrieval; reinstall of 4WPB100
</td>
</tr>
<tr>
<td style="text-align:left;">
2019-10-04
</td>
<td style="text-align:left;">
data retrieval
</td>
</tr>
<tr>
<td style="text-align:left;">
2019-10-30
</td>
<td style="text-align:left;">
data retrieval; cleaned radiometers
</td>
</tr>
<tr>
<td style="text-align:left;">
2019-11-15
</td>
<td style="text-align:left;">
Licor LI7500 removed from tower for calibration; power was out in the
neighborhood when we arrived but was restored when we left about 1330
</td>
</tr>
<tr>
<td style="text-align:left;">
2019-11-18
</td>
<td style="text-align:left;">
Licor li-7500 calibration in ISTB4; Eli Perez Ruiz; and Zac Keller were
present
</td>
</tr>
<tr>
<td style="text-align:left;">
2019-11-19
</td>
<td style="text-align:left;">
Licor li-7500 and control box reinstalled; HC2S3 sensor removed for
calibration.
</td>
</tr>
<tr>
<td style="text-align:left;">
2019-12-02
</td>
<td style="text-align:left;">
data retrieval
</td>
</tr>
<tr>
<td style="text-align:left;">
2019-12-09
</td>
<td style="text-align:left;">
CR23X\_PB and CR1000 data loggers powered down; disconnected; and
removed for shipping and calibration
</td>
</tr>
<tr>
<td style="text-align:left;">
2020-02-05
</td>
<td style="text-align:left;">
CR23X\_PB and CR1000 data loggers connected and powered on
</td>
</tr>
<tr>
<td style="text-align:left;">
2020-02-07
</td>
<td style="text-align:left;">
HC2S3 sensor re-installed; data retrieval
</td>
</tr>
<tr>
<td style="text-align:left;">
2020-02-10
</td>
<td style="text-align:left;">
data retrieval to insure HC2S3 sensor was properly wired and sending
data
</td>
</tr>
<tr>
<td style="text-align:left;">
2020-03-06
</td>
<td style="text-align:left;">
data retrieval
</td>
</tr>
<tr>
<td style="text-align:left;">
2020-03-30
</td>
<td style="text-align:left;">
data retrieval
</td>
</tr>
<tr>
<td style="text-align:left;">
2020-04-30
</td>
<td style="text-align:left;">
data retrieval
</td>
</tr>
<tr>
<td style="text-align:left;">
2020-06-01
</td>
<td style="text-align:left;">
data retrieval
</td>
</tr>
<tr>
<td style="text-align:left;">
2020-06-30
</td>
<td style="text-align:left;">
data retrieval
</td>
</tr>
<tr>
<td style="text-align:left;">
2020-07-31
</td>
<td style="text-align:left;">
data retrieval
</td>
</tr>
<tr>
<td style="text-align:left;">
2020-09-02
</td>
<td style="text-align:left;">
data retrieval
</td>
</tr>
<tr>
<td style="text-align:left;">
2020-09-20
</td>
<td style="text-align:left;">
cleaned radiometers
</td>
</tr>
<tr>
<td style="text-align:left;">
2020-10-01
</td>
<td style="text-align:left;">
data retrieval
</td>
</tr>
<tr>
<td style="text-align:left;">
2020-10-29
</td>
<td style="text-align:left;">
data retrieval
</td>
</tr>
<tr>
<td style="text-align:left;">
2020-11-30
</td>
<td style="text-align:left;">
data retrieval;Licor LI7500 removed from tower for calibration
</td>
</tr>
<tr>
<td style="text-align:left;">
2020-12-07
</td>
<td style="text-align:left;">
Licor li-7500 calibration in ISTB4; Eli Perez Ruiz 2020-12-08,“Licor
li-7500 and control box reinstalled 2021-01-29,”data retrieval
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-02-08
</td>
<td style="text-align:left;">
adjusted and cleaned radiometers
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-02-12
</td>
<td style="text-align:left;">
data retrieval CR23X\_PB
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-02-25
</td>
<td style="text-align:left;">
data retrieval
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-03-29
</td>
<td style="text-align:left;">
data retrieval
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-04-12
</td>
<td style="text-align:left;">
cleaned radiometers
</td>
</tr>
</tbody>
</table>
