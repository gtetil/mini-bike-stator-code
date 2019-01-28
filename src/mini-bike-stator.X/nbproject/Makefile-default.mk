#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/mini-bike-stator.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/mini-bike-stator.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=--mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../adc.c ../bldc.c ../diag.c ../eeprom.c ../interrupt.c ../lin.c ../main.c ../pwm.c ../T_Link/BVH2_Appl_Layer.c ../timer.c ../cksum.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1472/adc.p1 ${OBJECTDIR}/_ext/1472/bldc.p1 ${OBJECTDIR}/_ext/1472/diag.p1 ${OBJECTDIR}/_ext/1472/eeprom.p1 ${OBJECTDIR}/_ext/1472/interrupt.p1 ${OBJECTDIR}/_ext/1472/lin.p1 ${OBJECTDIR}/_ext/1472/main.p1 ${OBJECTDIR}/_ext/1472/pwm.p1 ${OBJECTDIR}/_ext/1715678124/BVH2_Appl_Layer.p1 ${OBJECTDIR}/_ext/1472/timer.p1 ${OBJECTDIR}/_ext/1472/cksum.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1472/adc.p1.d ${OBJECTDIR}/_ext/1472/bldc.p1.d ${OBJECTDIR}/_ext/1472/diag.p1.d ${OBJECTDIR}/_ext/1472/eeprom.p1.d ${OBJECTDIR}/_ext/1472/interrupt.p1.d ${OBJECTDIR}/_ext/1472/lin.p1.d ${OBJECTDIR}/_ext/1472/main.p1.d ${OBJECTDIR}/_ext/1472/pwm.p1.d ${OBJECTDIR}/_ext/1715678124/BVH2_Appl_Layer.p1.d ${OBJECTDIR}/_ext/1472/timer.p1.d ${OBJECTDIR}/_ext/1472/cksum.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1472/adc.p1 ${OBJECTDIR}/_ext/1472/bldc.p1 ${OBJECTDIR}/_ext/1472/diag.p1 ${OBJECTDIR}/_ext/1472/eeprom.p1 ${OBJECTDIR}/_ext/1472/interrupt.p1 ${OBJECTDIR}/_ext/1472/lin.p1 ${OBJECTDIR}/_ext/1472/main.p1 ${OBJECTDIR}/_ext/1472/pwm.p1 ${OBJECTDIR}/_ext/1715678124/BVH2_Appl_Layer.p1 ${OBJECTDIR}/_ext/1472/timer.p1 ${OBJECTDIR}/_ext/1472/cksum.p1

# Source Files
SOURCEFILES=../adc.c ../bldc.c ../diag.c ../eeprom.c ../interrupt.c ../lin.c ../main.c ../pwm.c ../T_Link/BVH2_Appl_Layer.c ../timer.c ../cksum.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/mini-bike-stator.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=16F1936
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1472/adc.p1: ../adc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/adc.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1472/adc.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=pro -N31 -I"../T_Link" -I"../" --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,+class,+mem,+hex,-file --fill=0xffff --checksum=0-1ffd@1ffe,algorithm=2 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,+stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1472/adc.p1  ../adc.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/adc.d ${OBJECTDIR}/_ext/1472/adc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/adc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1472/bldc.p1: ../bldc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/bldc.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1472/bldc.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=pro -N31 -I"../T_Link" -I"../" --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,+class,+mem,+hex,-file --fill=0xffff --checksum=0-1ffd@1ffe,algorithm=2 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,+stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1472/bldc.p1  ../bldc.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/bldc.d ${OBJECTDIR}/_ext/1472/bldc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/bldc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1472/diag.p1: ../diag.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/diag.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1472/diag.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=pro -N31 -I"../T_Link" -I"../" --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,+class,+mem,+hex,-file --fill=0xffff --checksum=0-1ffd@1ffe,algorithm=2 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,+stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1472/diag.p1  ../diag.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/diag.d ${OBJECTDIR}/_ext/1472/diag.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/diag.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1472/eeprom.p1: ../eeprom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/eeprom.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1472/eeprom.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=pro -N31 -I"../T_Link" -I"../" --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,+class,+mem,+hex,-file --fill=0xffff --checksum=0-1ffd@1ffe,algorithm=2 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,+stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1472/eeprom.p1  ../eeprom.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/eeprom.d ${OBJECTDIR}/_ext/1472/eeprom.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/eeprom.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1472/interrupt.p1: ../interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/interrupt.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1472/interrupt.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=pro -N31 -I"../T_Link" -I"../" --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,+class,+mem,+hex,-file --fill=0xffff --checksum=0-1ffd@1ffe,algorithm=2 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,+stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1472/interrupt.p1  ../interrupt.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/interrupt.d ${OBJECTDIR}/_ext/1472/interrupt.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/interrupt.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1472/lin.p1: ../lin.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/lin.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1472/lin.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=pro -N31 -I"../T_Link" -I"../" --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,+class,+mem,+hex,-file --fill=0xffff --checksum=0-1ffd@1ffe,algorithm=2 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,+stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1472/lin.p1  ../lin.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/lin.d ${OBJECTDIR}/_ext/1472/lin.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/lin.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1472/main.p1: ../main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=pro -N31 -I"../T_Link" -I"../" --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,+class,+mem,+hex,-file --fill=0xffff --checksum=0-1ffd@1ffe,algorithm=2 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,+stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1472/main.p1  ../main.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/main.d ${OBJECTDIR}/_ext/1472/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1472/pwm.p1: ../pwm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/pwm.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1472/pwm.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=pro -N31 -I"../T_Link" -I"../" --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,+class,+mem,+hex,-file --fill=0xffff --checksum=0-1ffd@1ffe,algorithm=2 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,+stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1472/pwm.p1  ../pwm.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/pwm.d ${OBJECTDIR}/_ext/1472/pwm.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/pwm.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1715678124/BVH2_Appl_Layer.p1: ../T_Link/BVH2_Appl_Layer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1715678124" 
	@${RM} ${OBJECTDIR}/_ext/1715678124/BVH2_Appl_Layer.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1715678124/BVH2_Appl_Layer.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=pro -N31 -I"../T_Link" -I"../" --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,+class,+mem,+hex,-file --fill=0xffff --checksum=0-1ffd@1ffe,algorithm=2 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,+stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1715678124/BVH2_Appl_Layer.p1  ../T_Link/BVH2_Appl_Layer.c 
	@-${MV} ${OBJECTDIR}/_ext/1715678124/BVH2_Appl_Layer.d ${OBJECTDIR}/_ext/1715678124/BVH2_Appl_Layer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1715678124/BVH2_Appl_Layer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1472/timer.p1: ../timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/timer.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1472/timer.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=pro -N31 -I"../T_Link" -I"../" --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,+class,+mem,+hex,-file --fill=0xffff --checksum=0-1ffd@1ffe,algorithm=2 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,+stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1472/timer.p1  ../timer.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/timer.d ${OBJECTDIR}/_ext/1472/timer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/timer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1472/cksum.p1: ../cksum.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/cksum.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1472/cksum.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=pro -N31 -I"../T_Link" -I"../" --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,+class,+mem,+hex,-file --fill=0xffff --checksum=0-1ffd@1ffe,algorithm=2 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,+stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1472/cksum.p1  ../cksum.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/cksum.d ${OBJECTDIR}/_ext/1472/cksum.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/cksum.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/_ext/1472/adc.p1: ../adc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/adc.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1472/adc.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=pro -N31 -I"../T_Link" -I"../" --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,+class,+mem,+hex,-file --fill=0xffff --checksum=0-1ffd@1ffe,algorithm=2 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,+stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1472/adc.p1  ../adc.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/adc.d ${OBJECTDIR}/_ext/1472/adc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/adc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1472/bldc.p1: ../bldc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/bldc.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1472/bldc.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=pro -N31 -I"../T_Link" -I"../" --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,+class,+mem,+hex,-file --fill=0xffff --checksum=0-1ffd@1ffe,algorithm=2 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,+stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1472/bldc.p1  ../bldc.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/bldc.d ${OBJECTDIR}/_ext/1472/bldc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/bldc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1472/diag.p1: ../diag.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/diag.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1472/diag.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=pro -N31 -I"../T_Link" -I"../" --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,+class,+mem,+hex,-file --fill=0xffff --checksum=0-1ffd@1ffe,algorithm=2 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,+stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1472/diag.p1  ../diag.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/diag.d ${OBJECTDIR}/_ext/1472/diag.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/diag.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1472/eeprom.p1: ../eeprom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/eeprom.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1472/eeprom.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=pro -N31 -I"../T_Link" -I"../" --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,+class,+mem,+hex,-file --fill=0xffff --checksum=0-1ffd@1ffe,algorithm=2 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,+stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1472/eeprom.p1  ../eeprom.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/eeprom.d ${OBJECTDIR}/_ext/1472/eeprom.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/eeprom.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1472/interrupt.p1: ../interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/interrupt.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1472/interrupt.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=pro -N31 -I"../T_Link" -I"../" --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,+class,+mem,+hex,-file --fill=0xffff --checksum=0-1ffd@1ffe,algorithm=2 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,+stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1472/interrupt.p1  ../interrupt.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/interrupt.d ${OBJECTDIR}/_ext/1472/interrupt.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/interrupt.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1472/lin.p1: ../lin.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/lin.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1472/lin.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=pro -N31 -I"../T_Link" -I"../" --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,+class,+mem,+hex,-file --fill=0xffff --checksum=0-1ffd@1ffe,algorithm=2 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,+stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1472/lin.p1  ../lin.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/lin.d ${OBJECTDIR}/_ext/1472/lin.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/lin.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1472/main.p1: ../main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=pro -N31 -I"../T_Link" -I"../" --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,+class,+mem,+hex,-file --fill=0xffff --checksum=0-1ffd@1ffe,algorithm=2 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,+stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1472/main.p1  ../main.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/main.d ${OBJECTDIR}/_ext/1472/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1472/pwm.p1: ../pwm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/pwm.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1472/pwm.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=pro -N31 -I"../T_Link" -I"../" --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,+class,+mem,+hex,-file --fill=0xffff --checksum=0-1ffd@1ffe,algorithm=2 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,+stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1472/pwm.p1  ../pwm.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/pwm.d ${OBJECTDIR}/_ext/1472/pwm.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/pwm.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1715678124/BVH2_Appl_Layer.p1: ../T_Link/BVH2_Appl_Layer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1715678124" 
	@${RM} ${OBJECTDIR}/_ext/1715678124/BVH2_Appl_Layer.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1715678124/BVH2_Appl_Layer.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=pro -N31 -I"../T_Link" -I"../" --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,+class,+mem,+hex,-file --fill=0xffff --checksum=0-1ffd@1ffe,algorithm=2 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,+stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1715678124/BVH2_Appl_Layer.p1  ../T_Link/BVH2_Appl_Layer.c 
	@-${MV} ${OBJECTDIR}/_ext/1715678124/BVH2_Appl_Layer.d ${OBJECTDIR}/_ext/1715678124/BVH2_Appl_Layer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1715678124/BVH2_Appl_Layer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1472/timer.p1: ../timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/timer.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1472/timer.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=pro -N31 -I"../T_Link" -I"../" --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,+class,+mem,+hex,-file --fill=0xffff --checksum=0-1ffd@1ffe,algorithm=2 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,+stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1472/timer.p1  ../timer.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/timer.d ${OBJECTDIR}/_ext/1472/timer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/timer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1472/cksum.p1: ../cksum.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/cksum.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1472/cksum.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=pro -N31 -I"../T_Link" -I"../" --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,+class,+mem,+hex,-file --fill=0xffff --checksum=0-1ffd@1ffe,algorithm=2 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,+stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1472/cksum.p1  ../cksum.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/cksum.d ${OBJECTDIR}/_ext/1472/cksum.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/cksum.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/mini-bike-stator.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/mini-bike-stator.X.${IMAGE_TYPE}.map  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=pro -N31 -I"../T_Link" -I"../" --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,+class,+mem,+hex,-file --fill=0xffff --checksum=0-1ffd@1ffe,algorithm=2 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,+stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"      --ram=default,-320-32f  $(COMPARISON_BUILD) --memorysummary dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -odist/${CND_CONF}/${IMAGE_TYPE}/mini-bike-stator.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/mini-bike-stator.X.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/mini-bike-stator.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/mini-bike-stator.X.${IMAGE_TYPE}.map  --double=24 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=pro -N31 -I"../T_Link" -I"../" --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,+class,+mem,+hex,-file --fill=0xffff --checksum=0-1ffd@1ffe,algorithm=2 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,+stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     $(COMPARISON_BUILD) --memorysummary dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -odist/${CND_CONF}/${IMAGE_TYPE}/mini-bike-stator.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
