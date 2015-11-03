set architecture armv5t
set remote Z-packet on
set tdesc filename ~/gdb-7.9.1/gdb/features/arm-with-neon.xml
file ~/gem5-stable/benchmark/adpcm/bin/rawdaudio
target remote localhost:7000
