
pwd=$(pwd);

cd os_x;
. $pwd/os_x/build.sh;
cd ../ubuntu;
. $pwd/ubuntu/build.sh;
cd ..;
zsh;
