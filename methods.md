Preface
============

USERS ARE CAUTIONED THAT THE DATA PRESENTED IN THIS DATASET ARE RAW DATA
DOWNLOADED DIRECTLY FROM DATA LOGGERS; THE DATA HAVE NOT BEEN PROCESSED OR
CHECKED FOR ACCURACY, COMPLETENESS OR QUALITY IN ANY CAPACITY; ANY CALCULATED
VALUES DERIVE DIRECTLY FROM A DATA LOGGER.

Introduction
============

This document is a guide, including a list of field operator protocols
for a micro-meteorological Open Path Eddy Covariance (OPEC) tower
located at the SE corner of Earll Drive and 39th Ave in Phoenix within
the Maryvale area (lat/long 33.483847, -112.142609).

There is an existing 10 m tower and a suite of instruments on-site that
are both operated by Maricopa County Air Quality Department.

The tower (a 23m/72ft tall US Tower TX-472) is sited within a fenced-off
compound, with a combination number lock. The compound itself is also
part of a larger enclosed area, which is secured by a daisy-chain of
locks.

The instruments installed on the tower and at the surface obtain a
comprehensive picture of surface and near-surface climate, carbon and
energy characteristics for a residential suburb located in an arid hot
climate through the eddy covariance technique. These data are valuable
for numerous purposes, which include model validation, time-series
analyses of carbon and eddy fluxes etc.

The tower has also been listed on the Urban Fluxnet website
(<http://www.geog.ubc.ca/urbanflux/>) along with other urban OPEC sites.

Instrumentation
===============

Tower-mounted (23 m) sensors: Sonic anemometerSonic anemometer (1),
Infra-red gas analyzer (1). Temperature/ relative humidity sensor (1),
Net radiometer (1)

Sensors at surface and sub-surface (sub-surface sensors removed 2016):
Soil temperature sensors (3), Soil moisture sensors (3), Soil heat flux
plate (1), Rain gauge (1)

A total of three data-loggers are used on site to record and store
instrument data; two CR1000s and one CR23X. One CR1000 is for the OPEC
sensors, while the other is for the suite of ground sensors. The CR23X
programs and records data from the radiometer and the rain gage. Data
from the OPEC CR1000 is collected via a compact flash (CF) card. Data
from the other two sensors is sent remotely and automatically to an ftp.

Power for the tower is obtained from main cables on site, and is linked
to an outlet within the datalogger enclosure. A PS100 regulator powers
each of the CR23X and the CR1000 with the soil sensors loggers. A
standard laptop charger is also connected to a 12V marine/auto battery
used to initiate the infra-red gas analyzer (IRGA) and power the OPEC
sensors and their CR1000 datalogger (see Li-Cor operator manual for more
details).

Monthly Maintenance and Data Retrieval
======================================

Visually inspect the tower and instruments – both on the tower and below
ground – to determine if there are obvious issues of note. The site is
exposed to petty vandalism on a regular basis, but thankfully (as of
August 2014) no tagging or sabotage to the tower itself has occurred.

Ensure that the rain gauge is standing vertically and the screen is free
of debris that could impede measurements.

Ensure that the cables leading to the soil sensors, and the soil sensors
themselves, are covered by gravel and/or soil and are not exposed
outside of the fenced enclosure. The cables extend west from the
northwest corner of the fenced enclosure underneath the gravel. After
&\#12615 ft, they turn north to where the sensors are buried underneath
the bare soil. Ideally, there should be no evidence of them outside the
fenced enclosure to avoid tampering by anyone who might make their way
into the lot.

Check voltage of marine battery with multimeter to ensure adequate power
supply; ideally, all voltages should be &\#12612V. Ensure that the cover
to the battery storage box is secure. If the marine battery is much
below 12 volts (&\#1269 V or less), the IRGA chopper will NOT work and
will be flagged. There is a spare CAP-LTER marine battery stored in the
ISTB 4 hydrology lab. There have been problems in the past due to an
insufficient power supply, particularly as the power requirements of the
IRGA increase with higher temperature. A standard laptop charger was
installed to provide more power (5A @ 12V) than the previous setup,
which included a PS100 charging regulator (only 1A @ 12V). The charger
is not necessarily rated for outdoor use, but power has been
consistently high enough through the 2014 spring and summer to keep the
IRGA running.

Retrieve 10 Hz data from CR 1000 through NL 115 memory card port: 1.
Press and hold the white button on the NL 115. Once the light turns
green, unscrew the port door and push the black eject button to remove
the memory card. Insert an empty memory card and close the door. Raw
data are in TOB3 (i.e. binary) format, and need to be converted to other
formats through LoggerNet. The CF cards are industrial grade to
withstand temperatures up to 85 deg C; regular grade CF cards will not
work at the site. In fact, the only CF cards that will work are those
sold by Campbell Scientific. I suggest that data transfer for the eddy
flux data be done at the lab due to the time taken for data conversion
to TOB1 format. 2. For data conversion, attach the USB multi-card reader
to laptop and insert card. Open the CConvert button in LoggerNet. There
should be two different files: one with 30 min block averaged data, the
other much larger file with 10 Hz data. Click on 'Start Conversion" to
initiate the process. Several weeks of data can take 30-45 minutes to
convert. 3. Once the TOB1 files can be seen on the laptop, fully delete
the files from the card. The card can now be used in the NL 115 again.
Be sure to eject the drive before removing either the card or the card
reader!!

Removing IRGA for Calibration in the Lab
========================================

In the past, this has been done roughly once per year. Now that we have
a calibration station available in town, it can be done more often
without significant down time. Ideally, this would be done every month,
but it does not seem that is necessary. Instead, this can be done 2-4
times per year.

Take note of the orientation of each instrument on the tower. Removing
(and installing) each sensor from the tower is a complicated process
which requires much care due to the precarious nature of this fieldwork,
combined with the cost of the equipment and the tower:

Remember to bring all the necessary fieldwork items and carrying cases
prior to departure, and I recommend leaving for the site as early as
possible (especially in summer). CAP-LTER field safety protocols also
apply.

To lower the tower, first remove the cables from the Velcro strip at the
base of the tower. Locate the winching mechanism on the NW corner of the
tower. Remove the nut and insert the winching arm into the mount; rotate
counter-clockwise (cable out) to lower and clockwise (cable in) to raise
the tower. DO NOT LOWER TOWER BELOW 40 FEET AS IT WILL DAMAGE THE
INSTRUMENT BOXES MOUNTED ON THE TOWER. There are clear duct tape
markings on the tower base to indicate where the tower's inner section
should be at 40 ft.

You will need to bring with you up the tower: a small bag for easy
access to tools and hardware storage (chalk bag); quick-draws on your
harness to secure yourself to the tower; a ½ inch wrench; a karabiner or
large bag to carry down the IRGA interface box; a small backpack for the
IRGA; Allen wrenches (the middle one in the set in the toolbox, but I
usually bring up the whole set because it's easier to grab in the bag);
a cloth and either water or Windex (or some other cleaner) to clean the
net radiometer.

Use the Allen wrench to remove the IRGA's Nu-Rail assembly from the boom
arm. Place the IRGA in the backpack, then remove the cable from it by
pulling firmly.

Take the opportunity to clean all four windows of the net radiometer.

Remove the SDM and power cables from the IRGA interface box and let them
dangle from the Hub. The only cable attached to the box should be the
one you already unplugged from the sensor head in step 4. Remove the
IRGA interface box with the ½ inch wrench. Loosen the two upper U-bolts
first, then remove one, but resecure the U-bolt to the box without
attaching it to the tower. Use a karabiner to hang that U-bolt from a
tower strut. After removing the other two U-bolts and allowing the box
to hang from the strut via the karabiner, you can then easily transfer
the box from the strut to a loop on your harness via the karabiner.

Place the IRGA in its carrier case for transport back to campus. The
calibration process requires the IRGA, the interface box, the cable
between them, and a power cable. We have purchased an additional power
cable to avoid disconnecting it from the Hub for calibration. Be sure to
take the winch handle with you whenever you leave the tower!

To reinstall, reverse steps 5 and 7 above. The IRGA should be installed
&\#12640cm from the CSAT, at an angle of &\#12630 degrees from the
vertical to allow water to drip from the sensor windows.

On the ground, connect the laptop to the CR1000 using the RS-232 cable
with USB adaptor. In LoggerNet, click on the "Connect" icon and
"Connect" to the "CR1000". Check the Numeric Display \#1 to make sure
data values are shown (no NAN's) and all flags show "false".

Once everything looks good, extend the tower to its full height (72 ft).
You should hear a ratcheting sound while turning the winch. Ensure that
the cables are not stuck on obstructions while raising the tower. The
cables from the CSAT box to the hub should be on the south side of the
tower to help avoid obstructions. The height of instruments can be
checked with an inclinometer, a tape measure, and a bit of basic
trigonometry. Secure all five cables (2 to the Hub, 2 to the radiometer,
1 to the T/RH probe) to the base of the tower with the Velcro strip.

Generally, re-installation takes more time than instrument removal due
to the additional attention needed to install each sensor. Do factor the
additional time needed (&\#126 1 hr) in your fieldwork plans.

Other (Non-Routine) Field Maintenance
=====================================

Removing other instruments from the tower: follow similar procedures as
removing the IRGA as described above.

The CSAT is also fixed to a vertical beam by a Nu-rail; similarly remove
the assembly with the correct Allen key and sliding it vertically.

The net radiometer can be removed by loosening the housing from the beam
with an Allen key and sliding it out horizontally.

The Temperature/Relative Humidity (T/RH) sensor is in two parts. The
sensor itself can be removed by unscrewing it from the bottom of its
radiation shield, while the shield itself is removed by unscrewing the
mount with the appropriate wrench. I suggest using cable ties to shorten
the cables of each instrument (especially the net radiometer and the
T/RH sensor prior to removal.

Use the level indicators installed in both the net radiometer and CSAT
to ensure that the instruments are properly aligned with the ground
during installation.

The SDM-Hub is attached to the tower with a large karabiner. It may look
insecure, but a manual check (jiggling) will show that it is much
stronger than it looks, and through several years it has not fallen. A
Phillips screwdriver is needed to open the box, and the cover only fits
on the hub in one direction (text on cover should appear upside-down).
To remove or insert cables, use the small flathead screwdriver in the
spare parts box. The screwdriver must be inserted vertically in the
small hole next to the lead port. If the lead does remove easily or will
not secure when the screwdriver is retracted, keep pushing the
screwdriver further. It's not as easy as it probably should be. Don't be
afraid of pushing the screwdriver all the way to the back of the box.

Programs for each datalogger
============================

There are three separate programs used at the site installed each
datalogger: (1) program for eddy flux sensors on CR1000, (2) program for
soil sensors on CR1000, and (3) program for radiation & rain gage
sensors on CR23X

The following is a sample from the CR1000 program for the OPEC sensors
(written in CSBasic):

'CR1000 Series Datalogger 'date: Jan 7 2011 'program author: Winston
Chow

' This datalogger program measures turbulence sensors at 10. The time
series is saved to a card. The datalogger will also compute online
turbulent fluxes from the measured data. The flux table saves all the
cross products that are required to rotate the online fluxes into
natural wind coordinates in post processing as described in Kaimal and
Finnigan (1994), and Tanner and Thurtell (1969). 'The following sensors
are measured: ' 'CSAT3 three dimensional sonic anemometer 'LI-7500 open
path infrared gas analyzer (CO2 and H2O) 'HMP45C temperature and
relative humidity probe ' The sign convention for the fluxes is positive
away from the surface and negative towards the surface. ' The datalogger
will introduce lags into the CSAT3, LI-7500, and datalogger ‘Panel
Temperature data so that all measurements are aligned in time. The ‘lags
are a function of the Scan Interval and are computed automatically by
‘the program. ' The site attendant must load in several constants and
calibration values.

'\*\*\* Unit Definitions \*\*\*

'Units Units 'C Celsius 'degrees degrees (angle) 'g grams 'J Joules 'kg
kilograms 'kPa kilopascals 'm meters 'mg milligrams 'mmol millimoles
'mol moles 's seconds 'umol micromols 'V volts 'W Watts

'\*\*\* Wiring \*\*\*

'SDM INPUT 'SDM-C1 CSAT3 SDM Data (green) ' LI-7500 SDM Data (gray)
'SDM-C2 CSAT3 SDM Clock (white) ' LI-7500 SDM Clock (blue) 'SDM-C3 CSAT3
SDM Enable (brown) ' LI-7500 SDM Enable (brown)
