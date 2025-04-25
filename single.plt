filename = ARG1
channel = ARG2
filesource = "<tail -n 10 ".filename

tcol = system("tput cols")
tline = system("tput lines")

set terminal dumb nofeed @tcol @tline
set datafile separator ","

set nokey
set yrange [0:2500]
set xdata time
set timefmt "%Y-%m-%dT%H:%M:%S"
# set format x "%H:%M:%S"
set format x "%S"

plot filesource using 1: @channel with line

pause 1
# sys 'clear'
reread

