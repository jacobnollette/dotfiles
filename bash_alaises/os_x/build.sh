echo "#!/bin/bash" > bash_aliases.symlink;
#echo "shopt -s expand_aliases" >> bash_aliases.symlink;

cat core/* >> bash_aliases.symlink
