#cd ~;
#git clone git://github.com/yasm/yasm.git;
#cd yasm
#./autogen.sh
#./configure
#make
#make install
curl -O http://www.nasm.us/pub/nasm/releasebuilds/2.13.01/nasm-2.13.01.tar.gz
tar xzvf nasm-2.13.01.tar.gz 
cd nasm-2.13.01
./configure --prefix=/opt/nasm
make
sudo make install
export PATH=/opt/nasm/bin/:$PATH
