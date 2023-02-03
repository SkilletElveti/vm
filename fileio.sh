#!/bin/sh

#  fileio.sh
#  
#
#  Created by Shubham Kamdi on 2/2/23.
#  
for i in {1..5}
do
    sysbench fileio --file-total-size=$file_size prepare
    sysbench fileio --file-total-size=$file_size --file-test-mode=rndrw --time=30 --threads=1 run
    sysbench fileio --file-total-size=$file_size cleanup
done

for i in {1..5}
do
    sysbench fileio --file-total-size=2G prepare
    sysbench fileio --file-total-size=2G --file-test-mode=rndrw --time=30 --threads=1 run
    sysbench fileio --file-total-size=2G cleanup
done

for i in {1..5}
do
    sysbench fileio --file-total-size=3G prepare
    sysbench fileio --file-total-size=3G --file-test-mode=rndrw --time=30 --threads=1 run
    sysbench fileio --file-total-size=3G cleanup
done

