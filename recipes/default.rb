postfix_creds = data_bag_item('secrets', 'postfix')

# relay mail through this gmail account
node.default['postfix']['main']['smtp_sasl_auth_enable']  = 'yes'
node.default['postfix']['main']['relayhost']              = '[smtp.gmail.com]:587'
node.default['postfix']['sasl']['smtp_sasl_user_name']    = postfix_creds[node.chef_environment]['smtp_sasl_user_name']
node.default['postfix']['sasl']['smtp_sasl_passwd']       = postfix_creds[node.chef_environment]['smtp_sasl_passwd']

# add aliases
node.default['postfix']['use_virtual_aliases']            = true
node.default['postfix']['virtual_aliases']                = {
  'root' => postfix_creds[node.chef_environment]['streambox_mail_email']
}

include_recipe 'postfix::sasl_auth'
include_recipe 'postfix::virtual_aliases'

service 'postfix' do
  action :nothing
end

template '/usr/local/bin/mailt' do
  source 'mailt.sh.erb'
  mode 0o755
end
