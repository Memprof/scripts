#set terminal png size 1600,1200
#set output "threads.png"
set xlabel "Time (cycle)"
set ylabel "Addr"
set xtics nomirror
set ytics nomirror
set nokey
set pointsize 0.01

plot 'log' using ($1):($2) with points title "Thread1" lc 1 pt 1 lt 1 lw 1, \
     'log' using ($3):($4) with points title "Thread2" lc 2 pt 2 lt 1 lw 1, \
     'log' using ($5):($6) with points title "Thread3" lc 3 pt 3 lt 1 lw 1, \
     'log' using ($7):($8) with points title "Thread4" lc 4 pt 4 lt 1 lw 1, \
     'log' using ($9):($10) with points title "Thread5" lc 5  pt 5 lt 1 lw 1, \
     'log' using ($11):($12) with points title "Thread6" lc 6 pt 6 lt 1 lw 1, \
     'log' using ($13):($14) with points title "Thread7" lc 7  pt 7 lt 1 lw 1, \
     'log' using ($15):($16) with points title "Thread8" lc 8 pt 8 lt 1 lw 1, \
     'log' using ($17):($18) with points title "Thread9" lc 9 pt 9 lt 1 lw 1, \
     'log' using ($19):($20) with points title "Thread10" lc 10 pt 10 lt 1 lw 1, \
     'log' using ($21):($22) with points title "Thread11" lc 11 pt 11 lt 1 lw 1, \
     'log' using ($23):($24) with points title "Thread12" lc 12 pt 12 lt 1 lw 1, \
     'log' using ($25):($26) with points title "Thread13" lc 13 pt 13 lt 1 lw 1, \
     'log' using ($27):($28) with points title "Thread14" lc 14 pt 14 lt 1 lw 1, \
     'log' using ($29):($30) with points title "Thread15" lc 15 pt 15 lt 1 lw 1, \
     'log' using ($31):($32) with points title "Thread16" lc 16 pt 16 lt 1 lw 1, \
     'log' using ($33):($34) with points title "Thread17" lc 17 pt 17 lt 1 lw 1, \
     'log' using ($35):($36) with points title "Thread18" lc 18 pt 18 lt 1 lw 1, \
     'log' using ($37):($38) with points title "Thread19" lc 19 pt 19 lt 1 lw 1, \
     'log' using ($39):($40) with points title "Thread20" lc 20 pt 20 lt 1 lw 1, \
     'log' using ($41):($42) with points title "Thread21" lc 21 pt 21 lt 1 lw 1, \
     'log' using ($43):($44) with points title "Thread22" lc 22 pt 22 lt 1 lw 1, \
     'log' using ($45):($46) with points title "Thread23" lc 23 pt 23 lt 1 lw 1, \
     'log' using ($47):($48) with points title "Thread24" lc 24 pt 24 lt 1 lw 1, \
     'log' using ($49):($50) with points title "Thread25" lc 25 pt 25 lt 1 lw 1, \
     'log' using ($51):($52) with points title "Thread26" lc 26 pt 26 lt 1 lw 1, \
     'log' using ($53):($54) with points title "Thread27" lc 27 pt 27 lt 1 lw 1, \
     'log' using ($55):($56) with points title "Thread28" lc 28 pt 28 lt 1 lw 1, \
     'log' using ($57):($58) with points title "Thread29" lc 29 pt 29 lt 1 lw 1, \
     'log' using ($59):($60) with points title "Thread30" lc 30 pt 30 lt 1 lw 1, \
     'log' using ($61):($62) with points title "Thread31" lc 31 pt 31 lt 1 lw 1, \
     'log' using ($63):($64) with points title "Thread32" lc 32 pt 32 lt 1 lw 1, \
     'log' using ($65):($66) with points title "Thread33" lc 33 pt 33 lt 1 lw 1, \
     'log' using ($67):($68) with points title "Thread34" lc 34 pt 34 lt 1 lw 1, \
     'log' using ($69):($70) with points title "Thread35" lc 35 pt 35 lt 1 lw 1, \
     'log' using ($71):($72) with points title "Thread36" lc 36 pt 36 lt 1 lw 1, \
     'log' using ($73):($74) with points title "Thread37" lc 37 pt 37 lt 1 lw 1, \
     'log' using ($75):($76) with points title "Thread38" lc 38 pt 38 lt 1 lw 1, \
     'log' using ($77):($78) with points title "Thread39" lc 39 pt 39 lt 1 lw 1, \
     'log' using ($79):($80) with points title "Thread40" lc 40 pt 40 lt 1 lw 1, \
     'log' using ($81):($82) with points title "Thread41" lc 41 pt 41 lt 1 lw 1, \
     'log' using ($83):($84) with points title "Thread42" lc 42 pt 42 lt 1 lw 1, \
     'log' using ($85):($86) with points title "Thread43" lc 43 pt 43 lt 1 lw 1, \
     'log' using ($87):($88) with points title "Thread44" lc 44 pt 44 lt 1 lw 1, \
     'log' using ($89):($90) with points title "Thread45" lc 45 pt 45 lt 1 lw 1, \
     'log' using ($91):($92) with points title "Thread46" lc 46 pt 46 lt 1 lw 1, \
     'log' using ($93):($94) with points title "Thread47" lc 47 pt 47 lt 1 lw 1, \
     'log' using ($95):($96) with points title "Thread48" lc 48 pt 48 lt 1 lw 1, \
     'log' using ($97):($98) with points title "Thread49" lc 49 pt 49 lt 1 lw 1, \
     'log' using ($99):($100) with points title "Thread50" lc 50 pt 50 lt 1 lw 1, \
     'log' using ($101):($102) with points title "Thread51" lc 51 pt 51 lt 1 lw 1, \
     'log' using ($103):($104) with points title "Thread52" lc 52 pt 52 lt 1 lw 1, \
     'log' using ($105):($106) with points title "Thread53" lc 53 pt 53 lt 1 lw 1, \
     'log' using ($107):($108) with points title "Thread54" lc 54 pt 54 lt 1 lw 1, \
     'log' using ($109):($110) with points title "Thread55" lc 55 pt 55 lt 1 lw 1, \
     'log' using ($111):($112) with points title "Thread56" lc 56 pt 56 lt 1 lw 1, \
     'log' using ($113):($114) with points title "Thread57" lc 57 pt 57 lt 1 lw 1, \
     'log' using ($115):($116) with points title "Thread58" lc 58 pt 58 lt 1 lw 1, \
     'log' using ($117):($118) with points title "Thread59" lc 59 pt 59 lt 1 lw 1, \
     'log' using ($119):($120) with points title "Thread60" lc 60 pt 60 lt 1 lw 1, \
     'log' using ($121):($122) with points title "Thread61" lc 61 pt 61 lt 1 lw 1, \
     'log' using ($123):($124) with points title "Thread62" lc 62 pt 62 lt 1 lw 1, \
     'log' using ($125):($126) with points title "Thread63" lc 63 pt 63 lt 1 lw 1, \
     'log' using ($127):($128) with points title "Thread64" lc 64 pt 64 lt 1 lw 1, \
     'log' using ($129):($130) with points title "Thread65" lc 65 pt 65 lt 1 lw 1, \
     'log' using ($131):($132) with points title "Thread66" lc 66 pt 66 lt 1 lw 1, \
     'log' using ($133):($134) with points title "Thread67" lc 67 pt 67 lt 1 lw 1, \
     'log' using ($135):($136) with points title "Thread68" lc 68 pt 68 lt 1 lw 1, \
     'log' using ($137):($138) with points title "Thread69" lc 69 pt 69 lt 1 lw 1, \
     'log' using ($139):($140) with points title "Thread70" lc 70 pt 70 lt 1 lw 1, \
     'log' using ($141):($142) with points title "Thread71" lc 71 pt 71 lt 1 lw 1, \
     'log' using ($143):($144) with points title "Thread72" lc 72 pt 72 lt 1 lw 1, \
     'log' using ($145):($146) with points title "Thread73" lc 73 pt 73 lt 1 lw 1, \
     'log' using ($147):($148) with points title "Thread74" lc 74 pt 74 lt 1 lw 1, \
     'log' using ($149):($150) with points title "Thread75" lc 75 pt 75 lt 1 lw 1, \
     'log' using ($151):($152) with points title "Thread76" lc 76 pt 76 lt 1 lw 1, \
     'log' using ($153):($154) with points title "Thread77" lc 77 pt 77 lt 1 lw 1, \
     'log' using ($155):($156) with points title "Thread78" lc 78 pt 78 lt 1 lw 1, \
     'log' using ($157):($158) with points title "Thread79" lc 79 pt 79 lt 1 lw 1, \
     'log' using ($159):($160) with points title "Thread80" lc 80 pt 80 lt 1 lw 1, \
     'log' using ($161):($162) with points title "Thread81" lc 81 pt 81 lt 1 lw 1, \
     'log' using ($163):($164) with points title "Thread82" lc 82 pt 82 lt 1 lw 1, \
     'log' using ($165):($166) with points title "Thread83" lc 83 pt 83 lt 1 lw 1, \
     'log' using ($167):($168) with points title "Thread84" lc 84 pt 84 lt 1 lw 1, \
     'log' using ($169):($170) with points title "Thread85" lc 85 pt 85 lt 1 lw 1, \
     'log' using ($171):($172) with points title "Thread86" lc 86 pt 86 lt 1 lw 1, \
     'log' using ($173):($174) with points title "Thread87" lc 87 pt 87 lt 1 lw 1, \
     'log' using ($175):($176) with points title "Thread88" lc 88 pt 88 lt 1 lw 1, \
     'log' using ($177):($178) with points title "Thread89" lc 89 pt 89 lt 1 lw 1, \
     'log' using ($179):($180) with points title "Thread90" lc 90 pt 90 lt 1 lw 1, \
     'log' using ($181):($182) with points title "Thread91" lc 91 pt 91 lt 1 lw 1, \
     'log' using ($183):($184) with points title "Thread92" lc 92 pt 92 lt 1 lw 1, \
     'log' using ($185):($186) with points title "Thread93" lc 93 pt 93 lt 1 lw 1, \
     'log' using ($187):($188) with points title "Thread94" lc 94 pt 94 lt 1 lw 1, \
     'log' using ($189):($190) with points title "Thread95" lc 95 pt 95 lt 1 lw 1, \
     'log' using ($191):($192) with points title "Thread96" lc 96 pt 96 lt 1 lw 1;

