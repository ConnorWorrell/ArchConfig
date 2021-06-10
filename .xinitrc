setWallpaper -r

xrdb -load ~/.Xresources

for f in /etc/X11/xinit/xinitrc.d/?.sh; do
	[ -x "$f" ] && . "$f"
done
unset f

picom -b

dunst &

blueman-applet &

dwmblocks &
dwmBlocksPackageUpdateDisplay &

clight &
xbindkeys &

# exec i3
exec dwm
