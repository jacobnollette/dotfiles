function ssh_new_key () {
	input_key="$@";
	ssh-keygen -f $input_key -t rsa -b 4096;
}

function ssh_home_key () {
	ssh-keygen -t rsa -b 4096;
}

