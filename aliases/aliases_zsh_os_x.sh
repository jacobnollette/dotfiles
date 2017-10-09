PRD=$(dirname "$0");		#	print relative directory
cd $PRD;
PWD=$(pwd);


#rm ~/.bash_aliases.global;
ln -sf $PWD/lib/bash_aliases.symlink ~/.bash_aliases.global;

#rm ~/.bash_aliases.ubuntu;
ln -sf $PWD/lib/os_x/10_12/bash_aliases.symlink ~/.bash_aliases.os_x;



echo ". ~/.bash_aliases.global;" >> ~/.zshrc;
echo ". ~/.bash_aliases.os_x;" >> ~/.zshrc;

zsh;
