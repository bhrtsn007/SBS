#!/bin/bash
sshpass -p '9)MntJFsj(H7' ssh -t gor@10.115.43.23 "cd /home/gor/easy_console;./rollcage_update.sh $1 " > /tmp/roll.txt
