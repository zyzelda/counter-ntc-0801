#!../../bin/linux-x86_64/nct

## You may have to change nct to something else
## everywhere it appears in this file

< envPaths
#epicsEnvSet("EPICS_CA_AUTO_BEACON_ADDR_LIST", "NO")
#epicsEnvSet("EPICS_CA_BEACON_ADDR_LIST", "10.30.72.215")

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/nct.dbd"
nct_registerRecordDeviceDriver pdbbase

# set protocol path
epicsEnvSet(STREAM_PROTOCOL_PATH, ".")

# configure ethernet devices
drvAsynIPPortConfigure("nct","10.30.72.161:7777 tcp",0,0,0)


## Load record instances
#dbLoadRecords("db/xxx.db","user=blctrlHost")
dbLoadRecords "db/X09B1-EH-NCT.db", "P=X09B1:EH:NCT"

cd "${TOP}/iocBoot/${IOC}"
iocInit

## Start any sequence programs
#seq sncExample, "P=X14W1:EH:NCT"
