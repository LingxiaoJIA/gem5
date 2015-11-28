#!/bin/bash
#gdb -q < cmds.gdb > log 2>&1
gdb-multiarch -q -x cmds.gdb 2>&1
