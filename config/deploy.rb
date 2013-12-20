set :application, "whatwouldmycmugrade.be"
set :repository,  "https://github.com/srir/cmugrades.git"

set :scm, :git # You can set :scm explicitly or Capistrano will make an intelligent guess based on known version control directory names
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

ssh_options[:user] = "ubuntu"
ssh_options[:keys] = ["#{ENV['HOME']}/.ssh/ec2-key.pem"]

server "srir.me", :app, :web, primary: true
set :use_sudo, false
set :deploy_to, "/var/www/be/whatwouldmycmugrade"
