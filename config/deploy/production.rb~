# https://github.com/TalkingQuickly/capistrano-3-rails-template/blob/master/config/deploy/production.rb

set :stage, :production
set :branch, "master"

# This is used in the Nginx VirtualHost to specify which domains
# the app should appear on. If you don't yet have DNS setup, you'll
# need to create entries in your local Hosts file for testing.

set :server_name, "www.wideeyekids.com wideeyekids.com"
server '176.58.121.237', user: 'deployer', roles: %w{web app db}, my_property: :my_value

set :deploy_to, "/home/#{fetch(:deploy_user)}/apps/#{fetch(:application)}"

# dont try and infer something as important as environment from
# stage name.
set :rails_env, :production

# Simple Role Syntax
# ==================
# Supports bulk-adding hosts to roles, the primary server in each group
# is considered to be the first unless any hosts have the primary
# property set.  Don't declare `role :all`, it's a meta role.

role :app, %w{deployer@176.58.121.237}
role :web, %w{deployer@176.58.121.237}
role :db,  %w{deployer@176.58.121.237}


# Extended Server Syntax
# ======================
# This can be used to drop a more detailed server definition into the
# server list. The second argument is a, or duck-types, Hash and is
# used to set extended properties on the server.



# Custom SSH Options
# ==================
# You may pass any option but keep in mind that net/ssh understands a
# limited set of options, consult[net/ssh documentation](http://net-ssh.github.io/net-ssh/classes/Net/SSH.html#method-c-start).
#
# Global options
# --------------
 set :ssh_options, {
   forward_agent: true,
 }
#
# And/or per server (overrides global)
# ------------------------------------
# server 'example.com',
#   user: 'user_name',
#   roles: %w{web app},
#   ssh_options: {
#     user: 'user_name', # overrides user setting above
#     keys: %w(/home/user_name/.ssh/id_rsa),
#     forward_agent: false,
#     auth_methods: %w(publickey password)
#     # password: 'please use keys'
#   }
