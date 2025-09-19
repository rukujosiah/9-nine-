Note to self:

Assuming I'm doing another fresh installation of Omarchy because the bootloader loops or some shit,
I will unfortunately have to deal with the stupid 920M proprietary driver issue AGAIN, haha fun

https://bbs.archlinux.org/viewtopic.php?id=271625

I will need the legacy driver: https://www.nvidia.com/en-us/drivers/unix/

Grab it from AUR: https://aur.archlinux.org/packages/nvidia-470xx-dkms

But run rns utils and dkms first

btop will fucking crash itself because of this, which is why I installed the git version of it (btop-git)

Do the rest from the forum and check with:

sudo cat /sys/module/nvidia_drm/parameters/modeset

It should return Y

After this everything else can come such as swww, pywal, kitty and whatnot

Disable swaybg from starting:

~/.local/omarchy/default/hypr/autostart.conf (and append swww-daemon and fcitx5 while at it, too)

Reference for fcitx5: https://qiita.com/mnishiguchi/items/2a1a485a72ff6289b32f

Uncomment omarchy-theme-bg-next keybinding from:

~/.local/share/omarchy/default/hypr/bindings/utilities.conf
