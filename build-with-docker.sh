# /usr/bin/sh

echo "cp -a /mnt/{.git,build,Makefile} . && source /root/emsdk/emsdk_env.sh && make && cp ffmpeg*js /mnt" | docker run --rm -i -v `pwd`:/mnt -w /opt kagamihi/ffmpeg.js
