#! /bin/bash
#arm-linux-gnueabi-gcc -g hello.c -o hello.elf -static
#gem5.debug configs/example/se.py -c hello
#arm-linux-gnueabi-gcc -g -o queens.elf queens.c ../util/m5/m5op_arm.S -static
gdb -args gem5.debug ../configs/example/se.py -c queens.elf -o 6
#gdb -args gem5.debug ../configs/example/se.py -c adpcm/bin/rawdaudio -i adpcm/data/small.adpcm --output=adpcm/output_small.adpcm
#gem5.debug ../configs/example/se.py -c adpcm/bin/rawdaudio -i adpcm/data/small.adpcm --output=adpcm/output_small.adpcm
