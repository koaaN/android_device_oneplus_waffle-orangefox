# OnePlus 12 waffle OrangeFox device tree

## Working

- [?] Display
- [?] Touch 
- [?] Decryption
- [?] Flashing
- [?] Backup & Restore
- [?] KernelSU, KernelSU Next & SukiSU Ultra Installer
- [?] MTP/OTG Storage
- [?] ADB/FastbootD
- [?] Factory Reset
- [?] Vibrator
- [?] Display & Vibration Settings
- [?] Flashlight

## Not working

- [ ] ???????

# How To Build

### Clone & Sync Source
```
mkdir -p ~/android/OrangeFox_16
cd ~/android/OrangeFox_16
git clone https://github.com/OrangeFox16/sync.git
cd sync
./orangefox_sync.sh --branch 16.0 --path ~/android/fox_16.0
```
### Clone Device-tree
```
cd ~/android/fox_16.0/device
mkdir -p oneplus
cd oneplus
git clone https://github.com/koaaN/android_device_waffle-orangefox -b fox_16.0 waffle
```
### BUILD!
```
cd ~/android/fox_16.0
source build/envsetup.sh
lunch twrp_waffle-bp2a-eng
mka adbd recoveryimage
```
