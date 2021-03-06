#
# Makefile for i9100
#

# The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
local-out-zip-file := MIUI_i9100.zip

# the location for local-ota to save target-file
local-previous-target-dir := 

# All apps from original ZIP, but has smali files chanded
local-modified-apps := Bluetooth

local-modified-jars :=

# All apks from MIUI
local-miui-removed-apps := 

local-miui-modified-apps := Calculator DeskClock GameCenter miuisystem MiuiHome Music SecurityCenter Settings TeleService XiaomiAccount

local-density := XHDPI

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-pre-zip-misc
local-after-zip:= 

# The local targets after the zip file is generated, could include 'zip2sd' to 
# deliver the zip file to phone, or to customize other actions

include phoneapps.mk
include $(PORT_BUILD)/porting.mk

# To define any local-target
updater := $(ZIP_DIR)/META-INF/com/google/android/updater-script
local-pre-zip-misc:
	@echo Update boot image
	cp other/boot.img $(ZIP_DIR)/boot.img

	@echo Replace system files
	cp -rf other/system $(ZIP_DIR)/
	cp $(SYSOUT_DIR)/app/QuickSearchBox.apk $(ZIP_DIR)/system/priv-app/QuickSearchBox.apk
	rm -rf $(ZIP_DIR)/system/app/QuickSearchBox.apk

	@echo Use stock bin files to avoid xposed bootloops
	cp -rf stockrom/system/bin/app_process $(ZIP_DIR)/system/bin/app_process
	rm -rf $(ZIP_DIR)/system/bin/debuggerd_vendor
	cp -rf stockrom/system/bin/debuggerd $(ZIP_DIR)/system/bin/debuggerd
	rm -rf $(ZIP_DIR)/system/bin/dexopt_vendor
	cp -rf stockrom/system/bin/dexopt $(ZIP_DIR)/system/bin/dexopt

	@echo Delete some unneeded files
	#rm -rf $(ZIP_DIR)/system/csc/common
