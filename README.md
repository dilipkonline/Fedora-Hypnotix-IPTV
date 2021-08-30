# Fedora-Hypnotix-IPTV - Tested Fedora 33+

Steps to install hypnotix manually, till an rpm is available

Tested on Fedora-33 MINT Environment but this could be easily tweaked(maybe not required at all) to work on other DEs as well.

Please try to take a backup or snapshot of the machine, for restoration in case of failure.

+++++++++++++++++++++++++++++++++++++++++++++++++++++

//Install rpmfusion repo (for mpv)

sudo dnf install http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm

sudo dnf install xapps mpv intltool mpv-libs mpv-libs-devel

pip3 install IMDbPY

wget -O hypnotix-master.zip https://github.com/linuxmint/hypnotix/archive/master.zip

unzip hypnotix-master.zip

cd hypnotix-master/

make all

sudo /usr/bin/glib-compile-schemas /usr/share/glib-2.0/schemas/

++++++++++++++++++++++++++++++++++++++++++++++++++++

Test (from inside hypnotix-master directory or symlink or PATH it for global access)

./test or ./usr/bin/hypnotix


# ALITER

Further, since m3u playlist, it can be opened in VLC as well but you might want to adjust the cache and other settings for better viewing experience,

