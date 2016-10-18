adb connect localhost:4444
#lib
find ../../out/target/product/x86/system/lib/liblxc* -exec adb push {} /system/lib  \;
#executables
find ../../out/target/product/x86/system/bin/lxc-* -exec adb push {} /system/bin \;
#kernel config
adb push ../../kernel/arch/x86/configs/android-x86_defconfig /system/bin
#lxc configs
adb shell mkdir -p /system/maru
adb push ../../out/target/product/x86/system/maru/lxc /system/maru
##./adb-push ../../out/target/product/x86/system/maru/lxc /system/maru 
#lxc container repo
##./adb-push ../../out/target/product/x86/data/maru/containers /data/maru/ 
adb shell mkdir -p /data/maru/
adb push ../../out/target/product/x86/data/maru/containers /data/maru/ 
