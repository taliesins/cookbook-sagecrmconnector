#
# Cookbook Name:: sagecrmconnector
# Recipe:: default
#
# Copyright (C) 2016 Taliesin Sisson
#
# All rights reserved - Do Not Redistribute
#

filename = File.basename(node['sagecrmconnector']['url']).downcase
download_directory = "#{Chef::Config['file_cache_path']}/#{node['sagecrmconnector']['filename']}/#{node['sagecrmconnector']['checksum']}"
download_path = "#{download_directory}/#{filename}"
msi_path = "#{download_directory}/#{node['sagecrmconnector']['filename']}.msi"
install_log_path = "#{download_directory}/#{node['sagecrmconnector']['filename']}.log"

directory download_directory do
	recursive true
end

remote_file download_path do
  source node['sagecrmconnector']['url']
  checksum node['sagecrmconnector']['checksum']
end

execute 'extract Sage CRM Connector msi' do
  command "\"#{filename}\" /extract:FOO"
  cwd download_directory
  not_if File.exists?(msi_path)
end

windows_package node['sagecrmconnector']['name'] do
	source msi_path
	installer_type :msi
	options "TARGETDIR=\"#{node['sagecrmconnector']['TARGETDIR']}\" /log \"#{install_log_path}\""
	not_if File.exists?(install_log_path)
end