#  install local files, 
#  read to update gitconfig

PWD=$(pwd;);

cat $PWD/../apps/vim/vimrc.symlink.ubuntu > ~/.vimrc;
cat $PWD/../apps/tmux/tmux.conf.symlink.ubuntu > ~/.tmux.conf;
cat $PWD/../apps/git/gitconfig.symlink > ~/.gitconfig;

vim ~/.gitconfig;
