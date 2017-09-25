tar_md5 () {
	#	md5 check sum a directory
	#	https://unix.stackexchange.com/questions/35832/how-do-i-get-the-md5-sum-of-a-directorys-contents-as-one-sum
	tar -cf - $1 | md5
}
