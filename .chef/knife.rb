# See http://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "akeshpatil"
client_key               "#{current_dir}/akeshpatil.pem"
validation_client_name   "nihilent-validator"
validation_key           "#{current_dir}/nihilent-validator.pem"
chef_server_url          "https://api.chef.io/organizations/nihilent"
cookbook_path            ["#{current_dir}/../cookbooks"]
