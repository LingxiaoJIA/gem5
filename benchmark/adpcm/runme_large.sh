#!/bin/sh
qemu-arm bin/rawcaudio < data/large.pcm > output_large.adpcm
qemu-arm bin/rawdaudio < data/large.adpcm > output_large.pcm
