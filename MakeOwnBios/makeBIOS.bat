grub-mkimage.exe -d i386-pc -c i386-pc.cfg -p (hd0,msdos1)/bios/grub -o z_core.img -O i386-pc biosdisk part_msdos fat exfat iso9660
copy i386-pc\boot.img z_boot.img
copy /b z_boot.img+z_core.img  z_g2ldr
del /f z_boot.img z_core.img
pause