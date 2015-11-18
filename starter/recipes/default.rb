# This is a Chef recipe file. It can be used to specify resources which will
# apply configuration to a server.

log "Welcome to Chef, #{node["starter_name"]}!" do
  level :info
end

template "/etc/myserver.conf" do
      source "sample.erb"
      owner "root"
      group "root"
      mode "644"
      variables :hostname => node["fqdn"], :servers => ["alpha", "bravo", "charlie"]
    end

 <% @servers.each do |name| %>
 ServerAlias <%= name %>;
 <% end %>
     

# For more information, see the documentation: https://docs.chef.io/essentials_cookbook_recipes.html
