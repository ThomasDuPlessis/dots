xsetroot -solid "#333333"
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
# exec sowm
# exec startplasma-x11
xmodmap .xmodmap
sxhkd &
# compton &
plumber &
wal -i ~/img/wal/
exec openbox-session
# exec dwm
# exec cinnamon-session
# exec fvwm
