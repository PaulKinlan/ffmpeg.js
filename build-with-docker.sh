# /usr/bin/sh

if [ $# -eq 0 ]
then
  TARGET="all"
else
  TARGET=$1
fi

# Builds in-place.
echo "source /root/emsdk/emsdk_env.sh && make $TARGET" | docker run --rm -i -v "$(pwd):/mnt" -w /mnt kagamihi/ffmpeg.js
