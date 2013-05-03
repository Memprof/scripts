#set terminal png size 1600,1200
#set output "locality.png"
set xlabel "Time (cycle)"
set ylabel "Addr"
set xtics nomirror
set ytics nomirror
#set nokey
set pointsize 0.01

plot 'log2' using ($1):($2) with points title "Remote" lc 1 pt 1 lt 1 lw 1, \
     'log2' using ($3):($4) with points title "Local" lc 2 pt 2 lt 2 lw 1;

