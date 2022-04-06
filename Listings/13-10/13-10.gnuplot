# File name: 13-10.gnuplot
set title 'Eingeschränkten Bereich darstellen'
set datafile separator ','
set xrange [97:103]
set yrange [97:103]
set xtics 90,1,110
set ytics 90,1,110
set mxtics 10
set mytics 10
set xlabel 'Temperatur-Sollwert [°C]'
set ylabel 'Temperatur-Messwert [°C]'
show grid
set grid ytics lt 1 lw 0.5 lc rgb '#bbbbbb'
set grid xtics lt 1 lw 0.5 lc rgb '#bbbbbb'
set key bottom right Right
show key

f(x)=x
plot f(x) with lines lc rgb '#000000' lw 0.5 title 'Idealer Verlauf',\
'temp.csv' using 2:3  with points pt 2 ps 1 lc rgb '#FF0000' lw 2 title 'Messwerte',\
'temp.csv' using 2:6  with lines lc rgb '#FF0000' lw 3 title 'Mittelwert',\
'temp.csv' using 2:7  with lines lt 0 lc rgb '#006400' lw 5 title 'Vertrauensgrenzen',\
'temp.csv' using 2:8  with lines lt 0 lc rgb '#006400' lw 5 notitle
