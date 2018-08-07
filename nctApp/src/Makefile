TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = nct
# nct.dbd will be created and installed
DBD += nct.dbd

# nct.dbd will be made up from these files:
nct_DBD += base.dbd
nct_DBD += asyn.dbd
nct_DBD +=calcSupport.dbd
nct_DBD += stream.dbd
nct_DBD += drvAsynIPPort.dbd

# Include dbd files from all support applications:
#nct_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#nct_LIBS += xxx
nct_LIBS += calc
nct_LIBS += stream
nct_LIBS += asyn

# nct_registerRecordDeviceDriver.cpp derives from nct.dbd
nct_SRCS += nct_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
nct_SRCS_DEFAULT += nctMain.cpp
nct_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#nct_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
nct_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

