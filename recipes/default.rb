#
# Cookbook Name:: evadnoob-debian-vm
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

apt_repository 'google-chrome' do
  uri 'http://dl.google.com/linux/chrome/deb/'
  #distribution `lsb_release -cs |tr -d '\n'` 
  distribution 'stable'
  key 'https://dl-ssl.google.com/linux/linux_signing_key.pub'
  components ['main']
  action :add
end


["build-essential",
 "autoconf",
 "unzip",
 "bsdtar",
 "libsasl2-modules",
 "mutt",
 "mpv",
 "postgresql-client-9.4",
 "python-pip",
 "git",
 "vim",
 "curl",
 "htop",
 "dstat",
 "bsd-mailx",
 "x-window-system",
 "i3-wm",
 "i3status",
 "google-chrome-stable",
 "transmission", "transmission-cli",  "transmission-common", "transmission-daemon",
 "tree",
 "tmux",
 "ttf-bitstream-vera",
# "fonts-hack-ttf",
 "screenfetch",
# "silversearch-ag",
 "scrot",
 "rxvt-unicode-256color",
 "zip",
 "zsh",
 "conky",
 #"ncmpcpp", "mopidy", "mopidy-spotify",
 "w3m-img",
 "aview",
 "figlet", "lolcat","cpufrequtils",
 "ncdu" # disk usage analyzer
].each do |v|
  package v do
    action :install
  end
end

# cookbook_file '/home/vagrant/.xsession' do
#   source 'default/xsession';
# end

#cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
# for dropbox ^^^
# echo fs.inotify.max_user_watches=100000 | sudo tee -a /etc/sysctl.conf; sudo sysctl -p

# curl --silent --show-error --retry 5 https://bootstrap.pypa.io/get-pip.py | sudo python2.7
# atool
# ranger, get source, compile and install


# get dmenu 4.6 compile install
# install rofi

file '/etc/apt/sources.list.d/testing.list' do 
content '
deb http://mirror.steadfast.net/debian/ testing main contrib non-free
deb-src http://mirror.steadfast.net/debian/ testing main contrib non-free
deb http://ftp.us.debian.org/debian/ testing main contrib non-free
deb-src http://ftp.us.debian.org/debian/ testing main contrib non-free
'
end 
