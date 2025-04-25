filename = ARG1
filecmd =  "<tail -n 10"
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


# plot '<tail -n 10 20240321.csv' using 1:2 with line

set multiplot layout 4,4

plot filesource using 1: 3 with line title "CH02"
set title "CH02"
plot filesource using 1: 4 with line title "CH03"
set title "CH03"
plot filesource using 1: 5 with line title "CH04"
set title "CH04"
plot filesource using 1: 6 with line title "CH05"
set title "CH05"
plot filesource using 1: 7 with line title "CH06"
set title "CH06"
plot filesource using 1: 8 with line title "CH07"
set title "CH07"
plot filesource using 1: 9 with line title "CH08"
set title "CH08"
plot filesource using 1:10 with line title "CH09"
set title "CH09"
plot filesource using 1:11 with line title "CH10"
set title "CH10"
plot filesource using 1:12 with line title "CH11"
set title "CH11"
plot filesource using 1:13 with line title "CH12"
set title "CH12"
plot filesource using 1:14 with line title "CH13"
set title "CH13"
plot filesource using 1:15 with line title "CH14"
set title "CH14"
plot filesource using 1:16 with line title "CH15"
set title "CH15"
plot filesource using 1:17 with line title "CH16"
set title "CH16"
plot filesource using 1: 2 with line title "CH01"
set title "CH01"

unset multiplot

pause 1
# sys 'clear'
reread

