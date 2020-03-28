#!/bin/bash
sshpass -p 'apj0702' ssh -t gor@10.115.43.16 "cd /home/gor/embd_logs/charger;./test.sh" > /tmp/bhar.txt
