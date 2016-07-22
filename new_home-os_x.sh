#  install local files, 
#  read to update gitconfig

PWD=$(pwd;);

cat $PWD/vim/vimrc.symlink.os_x > ~/.vimrc;
cat $PWD/tmux/tmux.conf.symlink.os_x > ~/.tmux.conf;
cat $PWD/git/gitconfig.symlink > ~/.gitconfig;

vim ~/.gitconfig;
