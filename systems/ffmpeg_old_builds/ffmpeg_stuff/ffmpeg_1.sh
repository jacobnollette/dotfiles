
apt-get update;
apt-get -y install autoconf automake build-essential git-core libass-dev libgpac-dev libsdl1.2-dev libtheora-dev libtool libvdpau-dev libvorbis-dev libx11-dev libxext-dev libxfixes-dev pkg-config texi2html zlib1g-dev libvpx-dev libmp3lame-dev libopus-dev libx264-dev libx265-dev libfdk-aac-dev nasm gcc yasm && true




mkdir -p ~/ffmpeg_sources


#	lib x264
#cd ~/ffmpeg_sources
#wget http://download.videolan.org/pub/x264/snapshots/last_x264.tar.bz2
#tar xjvf last_x264.tar.bz2
#cd x264-snapshot*
#PATH="$HOME/bin:$PATH" ./configure --prefix="$HOME/ffmpeg_build" --bindir="$HOME/bin" --enable-static --disable-opencl
#PATH="$HOME/bin:$PATH" make
#make install
#make distclean



cd ~;
git clone git://git.videolan.org/x264.git
cd x264
./configure --enable-static --enable-shared
make
make install
make distclean;
ldconfig
