PRD=$(dirname "$0");		#	print relative directory
cd $PRD;
PWD=$(pwd);


#rm ~/.bash_aliases.global;
ln -sf $PWD/lib/bash_aliases.symlink ~/.bash_aliases.global;

#rm ~/.bash_aliases.ubuntu;
ln -sf $PWD/lib/ubuntu/16_04/bash_aliases.symlink ~/.bash_aliases.ubuntu;



echo ". ~/.bash_aliases.global;" >> ~/.zshrc;
echo ". ~/.bash_aliases.ubuntu;" >> ~/.zshrc;

zsh;
