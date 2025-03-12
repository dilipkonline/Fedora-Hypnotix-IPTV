
#!/bin/bash

sudo dnf install -y lsb_release
VERS=$(lsb_release -r|awk '{print $2}')

sudo dnf install -y xapps mpv intltool mpv-libs mpv-libs-devel

pip3 install --user IMDbPY python-mpv common

if [ $VERS -eq 35 ]
then
 echo Fedora version 35 detected...
 echo Installing unidecode
 pip3 install unidecode
fi

mkdir -p $HOME/.local/share/glib-2.0/schemas/
cp -arv ./usr/share/glib-2.0/schemas/org.x.hypnotix.gschema.xml $HOME/.local/share/glib-2.0/schemas/
glib-compile-schemas $HOME/.local/share/glib-2.0/schemas/

wget -O hypnotix-master.zip https://github.com/linuxmint/hypnotix/archive/master.zip
unzip hypnotix-master.zip
cd hypnotix-master
make all

echo Running the Application from $PWD/test
$PWD/test&
