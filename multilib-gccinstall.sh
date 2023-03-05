apt-get install gcc gcc:i386 build-essential make automake autoconf bison flex g++-multilib gcc-multilib g++ gnat libc6-dev texinfo libgmp-dev libmpfr-dev libmpc-dev zlib1g-dev libisl-dev libgnutls28-dev binutils-common:i386 binutils-i686-linux-gnu:i386 fakeroot libalgorithm-diff-perl libalgorithm-diff-xs-perl libalgorithm-merge-perl libasan8:i386 libatomic1:i386 libbinutils:i386 libcc1-0:i386 libctf-nobfd0:i386 libctf0:i386 libdpkg-perl libfakeroot libfile-fcntllock-perl libgcc-12-dev:i386 libglu1-mesa libgomp1:i386 libgprofng0:i386 libisl23:i386 libitm1:i386 libmpc3:i386 libmpfr6:i386 libquadmath0:i386 libstdc++-12-dev:i386 libstdc++6:i386 libubsan1:i386 libc6:i386 linux-headers-$(uname -r) linux-headers-$(uname -r):i386 automake:i386 gettext coreutils 

apt-mark manual gcc gcc:i386 build-essential make automake autoconf bison flex g++-multilib gcc-multilib g++ gnat libc6-dev texinfo libgmp-dev libmpfr-dev libmpc-dev zlib1g-dev libisl-dev libgnutls28-dev binutils-common:i386 binutils-i686-linux-gnu:i386 fakeroot libalgorithm-diff-perl libalgorithm-diff-xs-perl libalgorithm-merge-perl libasan8:i386 libatomic1:i386 libbinutils:i386 libcc1-0:i386 libctf-nobfd0:i386 libctf0:i386 libdpkg-perl libfakeroot libfile-fcntllock-perl libgcc-12-dev:i386 libglu1-mesa libgomp1:i386 libgprofng0:i386 libisl23:i386 libitm1:i386 libmpc3:i386 libmpfr6:i386 libquadmath0:i386 libstdc++-12-dev:i386 libstdc++6:i386 libubsan1:i386 libc6:i386 linux-headers-$(uname -r) linux-headers-$(uname -r):i386 automake:i386 gettext coreutils wget

apt update

cd $HOME

wget https://libisl.sourceforge.io/isl-0.25.tar.xz
wget https://ftp.gnu.org/gnu/mpfr/mpfr-4.2.0.zip
wget https://ftp.gnu.org/gnu/gmp/gmp-6.2.1.tar.xz
wget https://ftp.gnu.org/gnu/gcc/gcc-12.2.0/gcc-12.2.0.tar.xz
wget https://ftp.gnu.org/gnu/mpc/mpc-1.3.1.tar.gz

tar -xvf gcc-12.2.0.tar.xz
tar -xvf gmp-6.2.1.tar.xz
unzip mpfr-4.2.0.zip
tar -xvf mpc-1.3.1.tar.gz
tar -xvf isl-0.25.tar.xz
mv isl-0.25 isl
mv gmp-6.2.1 gmp
mv mpfr-4.2.0 mpfr
mv mpc-1.3.1 mpc
cp -r gmp $HOME/Downloads/gcc-12.2.0/
cp -r mpfr $HOME/Downloads/gcc-12.2.0/
cp -r mpc $HOME/Downloads/gcc-12.2.0/
cp -r isl $HOME/Downloads/gcc-12.2.0/
cd $HOME/gcc-12.2.0/
mkdir build
cd build
../configure --prefix=/usr --enable-multilib --enable-languages=c,c++,d,fortran,go,lto,objc,obj-c++ --disable-bootstrap
make -j4
make install
echo "the compiler files is installed in /usr directory thank you for using my script if you have any difficulties please submit a bug report on GitHub"

