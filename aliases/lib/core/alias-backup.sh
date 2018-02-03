function _archive_folder () {
	
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


tar_zip () {
	    tar -zcvf $1 $2; 
}

tar_unzip () {
	  tar -xvf $1; 
}

function archive_folder () {

	given_folder="$@";
	
	given_start=`pwd`;

	cd "$given_folder";
	CURRENT=`pwd`
	given_base=`basename "$CURRENT"`
	cd "$given_start";
	given_date=`date '+%Y_%m_%d-%H_%M_%S'`;
	given_file="$given_base-$given_date.tar.gz";

	tar -zcvf "$given_file" "$given_folder";


}


function encrypt_file () {
	given_file="$@";
	gpg --armor -r "jacob@jacobnollette.com" -e "$given_file";
	rm -rf $given_file;
}


function encrypt_file_save () {
	given_file="$@";
	gpg --armor -r "jacob@jacobnollette.com" -e "$given_file";
	#rm -rf $given_file;
}


function encrypt_folder () {
	
	given_folder="$@";

	for filename in $given_folder; do
		echo $filename
		gpg --armor -r "jacob@jacobnollette.com" -e "$filename";
		rm "$filename";
	done;

}


function encrypt_folder_save () {
	
	given_folder="$@";

	for filename in $given_folder; do
		echo $filename
		gpg --armor -r "jacob@jacobnollette.com" -e "$filename";
		#rm "$filename";
	done;

}




function tar_zip () {
	    tar -zcvf $1 $2; 
}

function tar_unzip () {
	    tar -xvf $1; 
}
