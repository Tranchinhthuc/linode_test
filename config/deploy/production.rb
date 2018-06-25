set :port, 22
set :user, 'deploy'
set :deploy_via, :remote_cache
set :use_sudo, false

server '139.162.21.191',
  roles: [:web, :app, :db],
  port: fetch(:port),
  user: 'root',
  primary: true

set :deploy_to, "/var/www/linode_test"

set :ssh_options, {
  forward_agent: true,
  auth_methods: %w(publickey),
  user: 'deploy',
}

set :rails_env, :production
set :conditionally_migrate, true
