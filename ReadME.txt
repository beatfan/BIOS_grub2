1、bios-demo中是已经生成好的Demo，使用bootice将z_g2ldr恢复到想要启动磁盘主引导记录，然后将bios-demo复制到第一个分区的根目录下，将其改名为bios即可，第一个分区最好是fat/fat32格式。在bios中将对应磁盘改为首起动，然后就能进入grub2菜单

2、MakeOwnBios为自制efi版grub2的脚本，解压grub-2.02-for-windows.zip后，将makeBIOS.bat和i386-pc.cfg放到其中exe命令同级目录下，运行makeBIOS.bat即可生成z_g2ldr,使用Bootice（PE一般会带），将其恢复到你想要启动的磁盘的主引导记录，会自动搜索第一个分区的/bios/grub/grub2.cfg配置文件，这个路径是在脚本的 /p参数设置，另外配置文件路径由i386-pc.cfg决定，可自行修改。grub2.cfg可自行编写，也可以从demo中修改。除此之外，还需要复制locale和i386-pc文件夹以及unicode.pf2字体，若是需要背景图片，将其放到/bios/grub/下，命名为background.jpg

注意生成是不要加太多模块，超过63个扇区会有问题