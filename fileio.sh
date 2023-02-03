#!/bin/sh

#  fileio.sh
#  
#
#  Created by Shubham Kamdi on 2/2/23.
#  
for i in {1..5}
do
    sysbench fileio --file-total-size=$file_size prepare
    sysbench fileio --file-total-size=$file_size --file-test-mode=rndrw --time=300 --threads=8 run
    sysbench fileio --file-total-size=$file_size cleanup
done

