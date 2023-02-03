#!/bin/sh

#  fileio.sh
#  
#
#  Created by Shubham Kamdi on 2/2/23.
#  
for i in {1..5}
do
    sysbench fileio --file-total-size=1G prepare
    sysbench fileio --file-total-size=1G --file-test-mode=rndrw --time=300 --threads=8 run
    sysbench fileio --file-total-size=1G cleanup
done

