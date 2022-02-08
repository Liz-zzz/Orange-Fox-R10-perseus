FDEVICE="perseus"

fox_get_target_device() { 
local chkdev=$(echo "$BASH_SOURCE" | grep $FDEVICE)
   if [ -n "$chkdev" ]; then
      FOX_BUILD_DEVICE="$FDEVICE"
   else
      chkdev=$(set | grep BASH_ARGV | grep $FDEVICE)
      [ -n "$chkdev" ] && FOX_BUILD_DEVICE="$FDEVICE"
   fi
}
if [ -z "$1" -a -z "$FOX_BUILD_DEVICE" ]; then
   fox_get_target_device
fi

if [ "$1" = "$FDEVICE" -o "$FOX_BUILD_DEVICE" = "$FDEVICE"]; then
    export "FOX_REPLACE_TOOLBOX_GETPROP"=1
    export "FOX_USE_TAR_BINARY"=1
    export "FOX_USE_SED_BINARY"=1
    export "FOX_USE_BASH_SHELL"=1
    export "FOX_ASH_IS_BASH"=1
    export "OF_TWRP_COMPATIBILITY_MODE"=1
    export "OF_DISABLE_MIUI_SPECIFIC_FEATURES"=1
    export "FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER"=1
    export "FOX_DELETE_AROMAFM"=1
    ### TO BE DEFINED   ###
    export "OF_FL_PATH1"= TBD
    ###                 ###
    export "OF_MAINTAINER"="Liz-zzz"
    export "OF_SCREEN_H"=2340
    export "OF_STATUS_INDENT_LEFT"=48
    export "OF_STATUS_INDENT_RIGHT"=48
    export "OF_ALLOW_DISABLE_NAVBAR"=0
    export "OF_SKIP_MULTIUSER_FOLDERS_BACKUP"=1
    export "FOX_USE_NANO_EDITOR"=1
    ### TO BE DEFINED   ###
    export "FOX_USE_SPECIFIC_MAGISK_ZIP"= TBD
    ###                 ###
