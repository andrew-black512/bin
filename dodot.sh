#TODO - only use out dir if it exists
#TODO - should it use out in directory pf dot file or current dir?
FILEBASE=`basename $1 .dot`
OUTDIR=~/scratch/diag_pdf
PDF=$OUTDIR/${FILEBASE}.pdf
#ls $OUTDIR

   if dot ${FILEBASE}.dot -Tpdf > ${PDF} ;then
      gnome-open ${PDF}
   fi
