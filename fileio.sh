#!/bin/sh

#  fileio.sh
#  
#
#  Created by Shubham Kamdi on 2/2/23.
#  
file_size=2G

# Prepare the test file
sysbench fileio --file-total-size=$file_size prepare

# Run the read test
sysbench fileio --file-total-size=$file_size --file-test-mode=rndrw --time=30 --threads=2 run

# Clean up the test file
sysbench fileio --file-total-size=$file_size cleanup

