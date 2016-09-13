#!/bin/sh
# assumes dotfiles has been cloned
git -C dotfiles submodule update --init
sh ~/dotfiles/simlink.sh
source ~/.bashrc

sudo add-apt-repository ppa:webupd8team/sublime-text-3 
sudo add-apt-repository "deb http://archive.canonical.com/ $(lsb_release -sc) partner"
sudo apt-get update
sudo apt-get install -y vlc htop iotop terminator compizconfig-settings-manager compiz-plugins-extra gimp chromium-browser nodejs npm skype kazam sublime-text-installer

# make vlc default music/video player
sudo sed -i 's/rhythmbox/vlc/g' /usr/share/applications/defaults.list
sudo sed -i 's/rhythmbox/vlc/g' /usr/share/applications/mimeinfo.cache
sudo sed -i 's/totem/vlc/g' /usr/share/applications/defaults.list
sudo sed -i 's/totem/vlc/g' /usr/share/applications/mimeinfo.cache
sudo apt-get purge rhythmbox

# make terminator default terminal program
gsettings set org.gnome.desktop.default-applications.terminal exec 'terminator'

# enable 6 workspaces
gsettings set org.compiz.core:/org/compiz/profiles/unity/plugins/core/ vsize 2
gsettings set org.compiz.core:/org/compiz/profiles/unity/plugins/core/ hsize 3

# remove ubuntu's spam
gsettings set com.canonical.Unity.Lenses disabled-scopes "['more_suggestions-amazon.scope', 'more_suggestions-u1ms.scope', 'more_suggestions-populartracks.scope', 'music-musicstore.scope', 'more_suggestions-ebay.scope', 'more_suggestions-ubuntushop.scope', 'more_suggestions-skimlinks.scope']"
gsettings set com.canonical.Unity.Lenses remote-content-search none
sudo rm /usr/share/applications/ubuntu-amazon-default.desktop

wget https://3230d63b5fc54e62148e-c95ac804525aac4b6dba79b00b39d1d3.ssl.cf1.rackcdn.com/Anaconda2-2.5.0-Linux-x86_64.sh
bash Anaconda2-2.5.0-Linux-x86_64.sh -b
