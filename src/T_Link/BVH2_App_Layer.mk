#=======================================================================
# Model-dependent MAKE-file segment:  BVH2_App_Layer.mk
#
# This file can be used to build a production code application
# for TargetLink subsystems in model 'BVH2_App_Layer'.
#
# Generated by dSPACE TargetLink Version 2.0
# 2015-06-22 15:49:18 
# Copyright (c) 2000 by dSPACE GmbH
#=======================================================================


#-----------------------------------------------------------------------
# TargetLink system "BVH2_App_Layer/Control/Subsystem/Control":
#-----------------------------------------------------------------------

# file list - full names
CONTROL_SRC_FILES := \
   control.c \

# file list - base names
CONTROL_SRC_BASE_NAMES := \
   control.c \

# file dependencies
control.obj :  Control.c Control.h dsfxp.h tl_basetypes.h tl_defines_b.h


#-----------------------------------------------------------------------
# TargetLink system "BVH2_App_Layer/BVH2_Appl_Layer/Subsystem/BVH2_Appl_Layer":
#-----------------------------------------------------------------------

# file list - full names
BVH2_APPL_LAYER_SRC_FILES := \
   bvh2_appl_layer.c \

# file list - base names
BVH2_APPL_LAYER_SRC_BASE_NAMES := \
   bvh2_appl_layer.c \

# file dependencies
bvh2_appl_layer.obj :  BVH2_Appl_Layer.c BVH2_Appl_Layer.h dsfxp.h tl_basetypes.h tl_defines_b.h


#-----------------------------------------------------------------------
# List of source files
#-----------------------------------------------------------------------
MODEL_SRC_FILES := \
   $(CONTROL_SRC_FILES) \
   $(BVH2_APPL_LAYER_SRC_FILES) \

MODEL_SRC_BASE_NAMES := \
   $(CONTROL_SRC_BASE_NAMES) \
   $(BVH2_APPL_LAYER_SRC_BASE_NAMES) \


#-----------------------------------------------------------------------
# List of library files
#-----------------------------------------------------------------------
MODEL_LIB_FILES := \
   DSFxp.lib \