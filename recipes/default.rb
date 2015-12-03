#
# Cookbook Name:: evadnoob-debian-vm
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#
["build-essential",
 "unzip",
 "libsasl2-modules",
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
 "virtualbox-5.0"
 
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
