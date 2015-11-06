b atomic.cc:644
r
d 1
set thePCState = &(((SimpleThread*) 0x3476000) -> _pcState)
disp/x thePCState->_pc
disp/x thePCState->_npc
b 631 if thePCState->_pc == 0x10fc8
c
d 2
s
set thePCState->_npc = 0x10f68
b atomic.cc:530
c
d 3
b if thePCState->_pc == 0x10fc0
c
d 4
disp/x fault
