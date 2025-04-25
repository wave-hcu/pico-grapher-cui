#!/bin/bash
# graph.sh {filename}
tail -n 600 -f $1 | python3 /home/monet/visualize/multi.py

