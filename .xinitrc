#!/bin/sh
xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto
exec /usr/bin/prime-offload
userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

exec udiskie --no-automount --no-notify --tray --use-udisks2 &
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
# [ -f ~/.xprofile ] && . ~/.xprofile
export SUDO_ASKPASS="$HOME/.config/dpass"
exec sxhkd -c ~/.config/sxhkd/sxhkdrc &
autocutsel -fork &
autocutsel -selection PRIMARY -fork &

xset +fp ~/.local/share/fonts/NerdFonts/
xset +fp ~/.local/share/fonts/termsyn/
xset +fp ~/.local/share/fonts/
xset fp rehash
