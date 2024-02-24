ARCH=x86_64-w64-mingw32
#WORKDIR="$(cd "$(dirname "$0")" && pwd)"
WORKDIR=/root/ogg

cd "$WORKDIR"

mkdir .build
mkdir .bin

cd .build

../configure \
 --prefix="$WORKDIR/.bin" \
 --target=$ARCH \
 --build=i586-linux

make -j4
make DESTDIR="$WORKDIR/.bin" install