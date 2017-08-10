tar_md5 () {
	tar -cf - $1 | md5
}
