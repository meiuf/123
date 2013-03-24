require 'capistrano/ext/multistage'
default_run_options[:pty] = true
set :application, "dep"
set :scm, :git
set :repository, "git@github.com:meiuf/123.git"
set :scm_passphrase, ""
set :domain, 'test1111.zapto.org'
role :app, domain
role :web, domain
role :db, domain, :primary => true
set :user, "ubuntu"
set :stages, ["staging", "production"]
set :default_stage, "staging"
ssh_options[:keys] = ["/home/l/rent.pem"]
set :use_sudo ,false
set :repository_cache, "cached_copy"