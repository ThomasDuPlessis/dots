# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

export QT_QPA_PLATFORMTHEME="qt5ct"
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

export EDITOR=/usr/bin/vi
export VISUAL=/usr/bin/vi
export TERMINAL="kitty"

export GDK_SCALE=2
export QT_AUTO_SCREEN_SCALE_FACTOR=2

export GOCODE=/home/tom/go
PATH=$PATH:$HOME/go/bin
export MAIL=~/.local/share/mail/tpd/INBOX/
export BROWSER=google-chrome-stable
