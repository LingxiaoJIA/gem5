#! /bin/bash
#arm-linux-gnueabi-gcc -g hello.c -o hello.elf -static
#gem5.debug configs/example/se.py -c hello
arm-linux-gnueabi-gcc -g -o queens.elf queens.c -static
#arm-linux-gnueabi-gcc -g -o queens.elf queens.c ../util/m5/m5op_arm.S -static
arm-linux-gnueabi-objdump -d queens.elf > queens.objdump
#gdb-multiarch -args queens.elf 6
#gdb -args gem5.debug ../configs/example/se.py -c queens.elf -o 6
#gdb -args gem5.opt -r --stdout-file=queens.out ../configs/example/se.py -c queens.elf -o 6
gdb -q -x test.gdb -args gem5.opt -r --stdout-file=queens.out --debug-flags=SimpleCPU ../configs/example/se.py -c queens.elf -o 6 --cpu-type=atomic
#gdb -args gem5.debug ../configs/example/se.py -c adpcm/bin/rawdaudio -i adpcm/data/small.adpcm --output=adpcm/output_small.adpcm
#gem5.debug ../configs/example/se.py -c adpcm/bin/rawdaudio -i adpcm/data/small.adpcm --output=adpcm/output_small.adpcm
#gdb -args gem5.opt ../configs/example/se.py --cpu-type=minor --caches -c queens.elf -o 6
#gdb -args gem5.opt ../configs/example/se.py --cpu-type=minor --caches -c adpcm/bin/rawdaudio -i adpcm/data/small.adpcm --output=adpcm/output_small.adpcm
