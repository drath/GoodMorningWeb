# config valid only for Capistrano 3.1
lock '3.3.5'

set :application, 'GoodMorningWeb'
set :deploy_user, 'deployer'
set :deploy_via, :remote_cache

set :scm, 'git'
set :repo_url, "git@github.com:drath/#{fetch(:application)}.git"
set :branch, 'master'

set :pty, true
set :forward_agent, true

set :linked_files, %w{config/database.yml config/secrets.yml}
set :linked_dirs, %w{tmp/pids public/system}

namespace :deploy do

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      # Your restart mechanism here, for example:
      execute "/home/deployer/apps/GoodMorningWeb/current/config/unicorn_init.sh restart"
      # execute "/home/deployer/apps/GoodMorningWeb/current/config/unicorn_init.sh stop"
      # execute "/home/deployer/apps/GoodMorningWeb/current/config/unicorn_init.sh start"
    end
  end

  after :publishing, :restart


  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

end

