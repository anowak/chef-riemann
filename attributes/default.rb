# attributes/default.rb

default[:riemann][:version] = '0.2.4'
case node[:platform]
when 'ubuntu', 'debian'
  default[:riemann][:package] = "riemann_#{node[:riemann][:version]}_all.deb"
when 'fedora'
  default[:riemann][:package] = "riemann-#{node[:riemann][:version]}-1.noarch.rpm"
else
  default[:riemann][:package] = "riemann-#{node[:riemann][:version]}.tar.bz2"
end
default[:riemann][:package_url] = "http://aphyr.com/riemann/#{node[:riemann][:package]}"

default[:riemann][:user][:name] = 'riemann'
default[:riemann][:user][:home] = '/home/riemann'
default[:riemann][:user][:shell] = '/bin/bash'

default[:riemann][:server][:host] = 'localhost'
default[:riemann][:server][:tcp_port] = 5555
default[:riemann][:server][:udp_port] = 5555
default[:riemann][:server][:ws_port] = 5556
default[:riemann][:server][:additional_config] = 'sample_config.clj'
default[:riemann][:server][:additional_config_cookbook] = nil # this cookbook

default[:riemann][:dashboard][:enable] = true
default[:riemann][:dashboard][:host] = '0.0.0.0'
default[:riemann][:dashboard][:port] = 4567
default[:riemann][:dashboard][:directory] = '/opt/riemann-dash'
default[:riemann][:dashboard][:directory_cookbook] = nil # this cookbook

default[:riemann][:health][:enable] = false

override[:rbenv][:rubies] = '1.9.3-p484'

