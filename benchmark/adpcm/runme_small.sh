#!/bin/sh
#qemu-arm -L /usr/arm-linux-gnueabi bin/rawcaudio < data/small.pcm > output_small.adpcm
#qemu-arm -L /usr/arm-linux-gnueabi bin/rawdaudio < data/small.adpcm > output_small.pcm
#qemu-arm bin/rawcaudio < data/small.pcm > output_small.adpcm
qemu-arm bin/rawdaudio < data/small.adpcm > output_small.adpcm
