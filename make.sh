#*sudo* pip install yotta, not as user, then yotta not found.
#https://lancaster-university.github.io/microbit-docs/offline-toolchains/#yotta
#http://docs.yottabuild.org/#installing-on-linux
#https://github.com/lancaster-university/microbit-dal/issues/248
#  sudo apt-get install srecord
#[[ -d $1 ]] || echo specify a source/examples/ subdirectory
#exit
if [[ ! -d $1 ]]; then
	echo specify a source/examples/ subdirectory
	exit -1
fi
echo going ahead with build...
cp $1/* .
cp $1/* source
yt clean
yt build
#echo cp build/bbc-microbit-classic-gcc/source/...combined.hex over bbc micro icon in file manager
cp -v ./build/bbc-microbit-classic-gcc/source/microbit-samples-combined.hex /media/kim/MICROBIT
