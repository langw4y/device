echo "Adding Patches"
rm -rf system/bpf
rm -rf packages/modules/Bluetooth
git clone https://github.com/PixelExperience/packages_modules_Bluetooth.git -b thirteen packages/modules/Bluetooth
git clone https://github.com/kaikeEXE/system_bpf.git -b thirteen system/bpf
echo 'Completed, Now proceeding to lunch'