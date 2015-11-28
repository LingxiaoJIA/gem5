set pagination off
b atomic.cc:642
r
d 1
set normal = 0
set thePCState = &(((SimpleThread*) 0x3466000) -> _pcState)
disp currTick
disp/x thePCState->_pc
b 644 if thePCState->_pc == 0x10890
c
call takeCheckpoint(0)
b
c
q
#disp/x thePCState->_npc
#b if thePCState->_pc == 0x10fc8
#c
#d 2
#s
#set thePCState->_npc = 0x10f68
#b atomic.cc:530
#c
#d 3
#b if thePCState->_pc == 0x10fc0
#c
#d 4
#b 631
#c
#d 5
#disp/x fault
