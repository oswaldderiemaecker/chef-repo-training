#
# Cookbook:: myfirst_cookbook07
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

if node['platform'] == 'centos'
  package 'openssl'
end

include_recipe 'chef_nginx'

package 'vim'
package 'lynx'
package 'telnet'
package 'unzip'
