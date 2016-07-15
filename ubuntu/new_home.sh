#  install local files, 
#  read to update gitconfig

cat ../vim/vimrc.symlink > ~/.vimrc;
cat ../tmux/tmux.conf.symlink > ~/.tmux.conf;
cat ../git/gitconfig.symlink > ~/.gitconfig;

vim ~/.gitconfig;
