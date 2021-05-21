feh --bg-scale -z ~/Wallpapers/* &

xrdb -load ~/.Xresources

for f in /etc/X11/xinit/xinitrc.d/?.sh; do
	[ -x "$f" ] && . "$f"
done
unset f

picom -b

exec i3

