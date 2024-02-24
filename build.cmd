@echo off
cd /d "%~dp0"

md .bin
md .build

cd .build
cmake -G "Unix Makefiles" -DBUILD_SHARED_LIBS=1 -DCMAKE_PREFIX_PATH="../.bin" ..
make -j4
make DESTDIR="../.bin" install
