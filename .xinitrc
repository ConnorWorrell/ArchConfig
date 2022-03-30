setWallpaper -r

xrdb -load ~/.Xresources

for f in /etc/X11/xinit/xinitrc.d/?.sh; do
	[ -x "$f" ] && . "$f"
done
unset f

# compositor
picom -b

#xautolock -time 60 -locker lock

# notification handler
dunst &

# bluetooth
blueman-applet &

# dwm blocks
dwmblocks &
dwmBlocksPackageUpdateDisplay &

# funciton key bindings
xbindkeys &

# prevent set screen blank time to 30 mins
xset s 1800 1800 &
xset dpms 1800 2000 2200 &

autocutsel -fork -selection CLIPBOARD
autocutsel -fork -selection PRIMARY

fcitx -d &
newsBoatReload &
nm-applet 2>&1 > /dev/null &

addResolutions
automon &

srandrd -n automon &

otd > /tmp/otd.log &

# exec i3
exec dwm
# exec startxfce4
# exec kde
