#
# Cookbook Name:: setup-git-with-capistrano
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#require_relative '../libraries/ssh_setup'

ssh_config_path = "/etc/ssh/ssh_config"
server_ip = "162.243.81.180"

bash "Create ssh_config" do
  user "root"
  SSHSetup.run ssh_config_path, server_ip
end

#bash "Add a hello-world text file" do
#  user "root"
#  code <<-EOC
#     touch hello-world.txt
#     echo hello $USER > hello-world.txt
#  EOC
#end