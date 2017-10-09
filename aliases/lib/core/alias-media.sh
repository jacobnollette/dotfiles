function video_dimension () {

	eval $(ffprobe -v error -of flat=s=_ -select_streams v:0 -show_entries stream=height,width "$@");
	size=${streams_stream_0_width}x${streams_stream_0_height};
	echo $size;
}

function dot_clean () {
	input_folder="$@";
	find "$input_folder" -depth -name ".DS_Store" -exec rm {} \;
	find "$input_folder" -depth -name ".AppleDouble" -exec rm -Rf {} \;
}

