#
# Author:: Taliesin Sisson (<taliesins@yahoo.com>)
# Cookbook Name:: sagecrmconnector
# Attributes:: default
# Copyright 2014-2015, Chef Software, Inc.
# License:: Apache License, Version 2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


default['sagecrmconnector']['name'] = 'Sage CRM Connector'
default['sagecrmconnector']['filename'] = 'Sage CRM Connector'
default['sagecrmconnector']['filenameextension'] = 'exe'
default['sagecrmconnector']['url'] = 'http://www.yourserver.com/' + default['sagecrmconnector']['filename'] + '.' + default['sagecrmconnector']['filenameextension'] 
default['sagecrmconnector']['checksum'] = 'e1bf95842c030454c7d2984642d3fbf663eae1f4a95c7f02d2b05533725fcd5a'
default['sagecrmconnector']['home'] = "#{Chef::Config['file_cache_path']}/#{node['sagecrmconnector']['filename']}/#{node['sagecrmconnector']['checksum']}"
default['sagecrmconnector']['TARGETDIR'] = node['sagecrm']['application']['crm']['physical_path'] || 'C:\Program Files (x86)\Sage\CRM\CRM\WWWRoot'