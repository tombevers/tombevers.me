set :application, "tombevers.me"
set :domain,      "hammond.clearfix.be"
set :user,        "root"
set :deploy_to,   "/var/www/#{application}"
set :scm, "git"
set :repository, ""
set :local_repository, "file://."
set :deploy_via, :copy
# cache only seems to work if use scm
set :copy_cache, true
set :copy_via, :scp

role :web, domain                          # Your HTTP server, Apache/etc
role :app, domain                          # This may be the same as your `Web` server

set :use_sudo,      false
set :keep_releases,  3

set :shared_files,      []
set :webserver_user,    "www-data"
set :permission_method, :acl
set :use_set_permissions, true

# Be more verbose by uncommenting the following line
logger.level = Logger::MAX_LEVEL