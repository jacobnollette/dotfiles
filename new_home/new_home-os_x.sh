#  install local files, 
#  read to update gitconfig

PWD=$(pwd;);

cat $PWD/apps/vim/vimrc.symlink.os_x > ~/.vimrc;
cat $PWD/apps/tmux/tmux.conf.symlink.os_x > ~/.tmux.conf;
cat $PWD/apps/git/gitconfig.symlink > ~/.gitconfig;

vim ~/.gitconfig;
