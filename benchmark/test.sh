#! /bin/bash
#arm-linux-gnueabi-gcc -g hello.c -o hello.elf -static
#gem5.debug configs/example/se.py -c hello
#arm-linux-gnueabi-gcc -g -o queens.elf queens.c -static
#arm-linux-gnueabi-gcc -g -o queens.elf queens.c ../util/m5/m5op_arm.S -static
#arm-linux-gnueabi-objdump -d queens.elf > queens.objdump
#gdb-multiarch -args queens.elf 6
#gdb -args gem5.debug ../configs/example/se.py -c queens.elf -o 6
#gdb -args gem5.opt -r --stdout-file=queens.out ../configs/example/se.py -c queens.elf -o 6

# test
#gdb -q -x test.gdb -args gem5.opt ../configs/example/se.py -c test.elf --cpu-type=atomic

# queens
#gdb -q -x test.gdb -args gem5.opt -r --stdout-file=queens.out --debug-flags=SimpleCPU,Fetch,Decode ../configs/example/se.py -c queens.elf -o 6 --cpu-type=atomic
#gem5.opt -r --stdout-file=queens.out ../configs/example/se.py -c queens.elf -o 6 --cpu-type=atomic

# sha
#gem5.opt -r --stdout-file=sha.out ../configs/example/se.py -c sha/sha.elf -i sha/input_small.asc --cpu-type=atomic
gdb -q -args gem5.opt -r --stdout-file=sha.out ../configs/example/se.py -c sha/sha.elf -i sha/input_small.asc --cpu-type=atomic --checkpoint-dir=m5out/sha_small_out
#gdb -q -x test.gdb -args gem5.opt -r --stdout-file=sha.out --debug-flags=SimpleCPU,Fetch,Decode ../configs/example/se.py -c sha/sha.elf -i sha/input_small.asc --cpu-type=atomic --checkpoint-dir=/home/rexjia/gem5-stable/benchmark/m5out/sha_small_out
#gem5.opt ../configs/example/se.py -c sha/sha.elf -i sha/input_large.asc --cpu-type=atomic

# adpcm decode
#gem5.opt ../configs/example/se.py -c adpcm/bin/rawdaudio -i adpcm/data/small.adpcm --output=adpcm/output_small.pcm
#gem5.opt ../configs/example/se.py -c adpcm/bin/rawdaudio -i adpcm/data/large.adpcm --output=adpcm/output_large.pcm

# adpcm encode
#gem5.opt ../configs/example/se.py -c adpcm/bin/rawcaudio -i adpcm/data/small.pcm --output=adpcm/output_small.adpcm
#gem5.opt ../configs/example/se.py -c adpcm/bin/rawcaudio -i adpcm/data/large.pcm --output=adpcm/output_large.adpcm

# other processors
#gdb -args gem5.opt ../configs/example/se.py --cpu-type=minor --caches -c queens.elf -o 6
#gdb -args gem5.opt ../configs/example/se.py --cpu-type=minor --caches -c adpcm/bin/rawdaudio -i adpcm/data/small.adpcm --output=adpcm/output_small.adpcm
