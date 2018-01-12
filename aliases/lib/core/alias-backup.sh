function archive_folder () {
	
	given_folder="$@";
	print_folder="$given_folder/_print";
	mkdir -p $print_folder;

	for filename in `find $given_folder -name "*.zip" -type f`; do
		echo $filename
		gpg --armor -r "jacob@jacobnollette.com" -e "$filename";
		mv "$filename.asc" $print_folder;
	done;

	for filename in `find $given_folder -name "*.tar.gz" -type f`; do
		echo $filename
		gpg --armor -r "jacob@jacobnollette.com" -e "$filename";
		mv "$filename.asc" $print_folder;
	done;

}

function archive_file () {


	given_file="$@";
	mkdir -p _print;
	
	gpg --armor -r "jacob@jacobnollette.com" -e "$given_file";
	mv "$given_file.asc" _print;

}

function encrypt_file () {
	given_file="$@";
	gpg --armor -r "jacob@jacobnollette.com" -e "$given_file";
	rm -rf $given_file;
}


function encrypt_folder () {
	
	given_folder="$@";
	#print_folder="$given_folder/_print";
	#mkdir -p $print_folder;

	for filename in `find $given_folder -name "*.zip" -type f`; do
		echo $filename
		gpg --armor -r "jacob@jacobnollette.com" -e "$filename";
		rm "$filename";
	done;

	for filename in `find $given_folder -name "*.tar.gz" -type f`; do
		echo $filename
		gpg --armor -r "jacob@jacobnollette.com" -e "$filename";
		rm "$filename";
	done;

}
