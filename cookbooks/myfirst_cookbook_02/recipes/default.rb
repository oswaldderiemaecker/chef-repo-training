#
# Cookbook:: myfirst_cookbook
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'vim'
package 'lynx'
package 'telnet'
package 'unzip'

if node['platform'] == 'centos'
  package 'openssl'
end

include_recipe 'chef_nginx'
