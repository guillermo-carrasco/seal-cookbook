#
# Cookbook Name:: seal-cookbook
# Recipe:: default
#
#

include_recipe "seal-cookbook::install_deps"
include_recipe "pydoop-cookbook"
include_recipe "hadoop-BAM-cookbook"
include_recipe "git"

#Checkot biodoop-seal-code from Git
git "Checking out biodoop-seal code" do
    repository  "#{node['seal-latest-code']}"
    action :sync
    destination "#{node['install_dir']}/seal"
end

#Compile Seal. Requires java SDK!
execute "Compiling seal" do
    command "cd #{node['install_dir']}/seal && python setup.py build && python setup.py install"
    action :run
end

