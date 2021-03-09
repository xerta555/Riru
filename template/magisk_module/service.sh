#!/system/bin/sh
MODDIR=${0%/*}

# Reset ro.dalvik.vm.native.bridge or reboot if needed
export CLASSPATH=$MODDIR/rirud.dex
su -c app_process -Djava.class.path="$MODDIR"/rirud.dex /system/bin --nice-name=rirud_java riru.Daemon