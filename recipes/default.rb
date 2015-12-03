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
 "bsd-mailx", "x-window-system"].each do |v|
  package v do
    action :install
  end
end

