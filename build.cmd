@echo off
cd /d "%~dp0"

md .bin
cd .bin
make ..
make DESTDIR="../.bin" install