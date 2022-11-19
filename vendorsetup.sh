echo "Adding Patches"
rm -rf system/bpf
rm -rf packages/modules/Bluetooth
rm -rf packages/apps/Updates
rm -rf OTA
rm -rf vendor/aosp
git clone https://github.com/PixelExperience/packages_modules_Bluetooth.git -b thirteen packages/modules/Bluetooth
git clone https://github.com/kaikeEXE/system_bpf.git -b thirteen system/bpf
git clone https://github.com/orkunergun/PEXUpdater.git -b trece packages/apps/Updates
git clone https://github.com/orkunergun/PEXOTA.git -b trece OTA
git clone https://github.com/orkunergun/PEXVendor.git -b trece vendor/aosp
echo 'Completed, Now proceeding to lunch'