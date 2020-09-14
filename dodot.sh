#TODO - only use out dir if it exists
#TODO - should it use out in directory pf dot file or current dir?
##   perl station2dot.pl LBG_PUR > out/L.do

#TODO handle other directoires. Either use regexp to removed or compose from dirname.
FILEBASE=`basename $1 .dot`
PDF=out/${FILEBASE}.pdf

   dot ${FILEBASE}.dot -Tpdf > ${PDF}
   #TODO handle error - dont open.

   gnome-open ${PDF}
