#  install local files, 
#  read to update gitconfig

PWD=$(pwd;);

cat $PWD/vim/vimrc.symlink > ~/.vimrc;
cat $PWD/tmux/tmux.conf.symlink > ~/.tmux.conf;
cat $PWD/git/gitconfig.symlink > ~/.gitconfig;

vim ~/.gitconfig;
