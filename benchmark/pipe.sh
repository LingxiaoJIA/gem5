#!/bin/bash
#if [ -e /tmp/pipe ]; then
#    rm /tmp/pipe
#fi
#mkfifo /tmp/pipe
#(. cpipe.sh)
#echo $! > /tmp/pipe_pid
./test.sh < /tmp/pipe
