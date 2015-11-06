#!/bin/bash

echo "set output-radix 16" > /tmp/pipe
echo "b atomic.cc:515" > /tmp/pipe
echo "r" > /tmp/pipe
echo "set thePCState = &(((SimpleThread*) 0x3476000) -> _pcState)" > /tmp/pipe
echo "disp thePCState->_pc" > /tmp/pipe
