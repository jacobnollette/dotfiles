brew install rbenv ruby-build;


cat partials/rc >> ~/.bash_profile
cat partials/rc >> ~/.zshrc

exec partials/install_ruby.sh;



