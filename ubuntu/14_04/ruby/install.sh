# get the working directory
PWD=$(pwd;);
#echo $PWD;

#cd ;
git clone https://github.com/rbenv/rbenv.git ~/.rbenv;
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build;

cat $PWD/partials/bashrc >> ~/.bashrc;
cat $PWD/partials/bashrc >> ~/.zshrc;

source $HOME/.zshrc;

#echo $PWD;
exec $PWD/partials/ruby_install.sh;
#echo $SHELL;
#exec $SHELL;

#rbenv install 2.3.1;
#rbenv global 2.3.1;

#ruby -v;

#gem install bundler;
#gem install capistrano;
#gem install rails -v 4.2.6;

#rbenv rehash;
