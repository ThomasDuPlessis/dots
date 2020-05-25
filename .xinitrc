xsetroot -solid "#333333"
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
# exec sowm
# exec startplasma-x11
# exec dwm
xmodmap .xmodmap
sxhkd &
compton &
plumber &
wal -i ~/img/wal/
exec openbox-session
