#TODO - only use out dir if it exists
##   perl station2dot.pl LBG_PUR > out/L.do

FILEBASE=`basename $1 .dot`
PDF=out/${FILEBASE}.pdf

   dot ${FILEBASE}.dot -Tpdf > ${PDF}
   gnome-open ${PDF}
