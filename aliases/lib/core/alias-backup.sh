function archive_folder () {
	
	given_folder="$@";
	print_folder="$given_folder/_print";
	mkdir -p $print_folder;

	for filename in $given_folder/*.zip; do
		echo $filename

		gpg --armor -r "jacob@jacobnollette.com" -e $filename;
		mv "$filename.asc" $print_folder;
	done

}
