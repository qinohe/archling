#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources


syndaemon -t -k -i 10 -d &

setxkbmap -option ctrl:nocaps

xbindkeys

ulimit -c unlimited

# Start a D-Bus session
source /etc/X11/xinit/xinitrc.d/30-dbus
# Start GNOME Keyring
eval $(/usr/bin/gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh)
# You probably need to do this too:
export SSH_AUTH_SOCK
export GPG_AGENT_INFO
export GNOME_KEYRING_CONTROL
export GNOME_KEYRING_PID

xset +fp /usr/share/fonts/local
xset fp rehash

case $wm in
i3)
        exec /usr/bin/i3
    ;;
*)
	exec /usr/bin/i3
    ;;
esac
